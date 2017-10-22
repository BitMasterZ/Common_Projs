# File Logger
import hashlib, os, sys;
from collections import deque;

# Open and read file then return hashed values
def hash(fname):
    f = open(fname, 'rb')
    readFile = f.read()
    hash_func = hashlib.sha1(readFile)
    return hash_func.hexdigest()

# Return a list of files in the current directory with the matching extension
def getFileList(ext):
    file_list = []
    directory_list = deque([os.getcwd()])
    
    while len(directory_list) != 0:
        current_Dir = directory_list.popleft()        
        for file in os.listdir(current_Dir):
            # print(os.path.join(current_Dir, file))
            if os.path.isdir(os.path.join(current_Dir, file)):
                # print('\tDIR')
                directory_list.append(os.path.join(current_Dir, file))
            elif file.endswith(ext):
                # print('\tVALID')
                file_list.append(os.path.join(current_Dir, file))
    return file_list;

# Load log file into dictionary
# Key = file path
# Content = file hash value
def loadLogFile(ext):
    if(not os.path.isfile(ext + 'files.log')):
        return None;
    data = {}
    log_file = open(ext + 'files.log', 'r')
    
    for line in log_file:
        data[line[:-1].split('\t')[0]] = line[:-1].split('\t')[1]        
    log_file.close()
    return data;

def printComparison(newF, delF, modF, rnmF):
    print ("Comparison results....")
    
    print ("NEW:")
    for file in newF:
        print('\t' + file)
    
    print ("MODIFIED:")
    for file in modF:
        print('\t' + file)
    
    print ("RENAMED:")
    for file in rnmF:
        print('\t' + file)
    
    print ("DELETED:")
    for file in delF:
        print('\t' + file)
    


# Compare the file list and the log data
def logCompare(log_data, file_list):
    newFile_list = []
    delFile_list = []
    modFile_list = []
    rnmFile_list = []

    for file in file_list:
        if file in log_data.keys():
            if hash(file) != log_data[file]:
                # Modified file
                modFile_list.append(file)
        else:
            if hash(file) in log_data.values():
                # Renamed file
                rnmFile_list.append(file)
            else:
                # New file
                newFile_list.append(file)

    for key in log_data.keys():
        if key not in file_list:
            # Deleted file
            delFile_list.append(key)
    
    printComparison(newFile_list, delFile_list, modFile_list, rnmFile_list)



if __name__ == '__main__':
    print('Welcome to File Logger. Enter your command')
    print()

    ext = str(sys.argv[1])
    while True:
        command = input('>>')
        command = command.split(" ")

        if command[0].lower() == 'log': # Write file and hash list to log file
            file_list = getFileList('.' + ext)
            log_file = open(ext + 'files.log', 'w')
            for file in file_list:
                log_file.write(file + '\t' + str(hash(file)) + '\n')
            log_file.close()
            print('Log updated.')
        
        elif command[0].lower() == 'load': # Scan the directory
            log_data = loadLogFile(ext)
            if(log_data == None):
                print('Log file does not exist.')
                continue;
            # print(log_data)
            file_list = getFileList('.' + ext)
            # print(file_list)
            # for f in file_list:
                # print(f + '\t' + str(hash(f)))

            print('Load complete.')
            

        elif command[0].lower() == 'compare':
            # Get file and hash list from log
            log_data = loadLogFile(ext)
            # Get file list from directory
            file_list = getFileList('.' + ext)

            logCompare(log_data, file_list)

        elif command[0].lower() == "read":
            log_file = open(ext + 'files.log', 'r')
            for line in log_file:
                print(line)

        elif command[0].lower() == "ext":
            if(len(command) >= 2 and command[1] != ''):
                ext = str(command[1])
                print("File extension changed to ." + ext)
            else:
                print("New extension not specified")

        elif command[0].lower() == "del":
            if os.path.isfile(ext + 'files.log'):
                os.remove(ext + 'files.log')
                print("Delted log file.")
            else:
                print("Log file does not exist.")

        elif command[0].lower() == 'help' or command[0].lower() == 'h':
            print('Currently logging extension .' + ext)
            print('List of commands...')
            
            print('load:')
            print('\tLoad file and hash list from log file and get list of files in directory')
            
            print('compare:')
            print('\tRun a comparison against the log to find which files are new, updated, deleted or renamed')
            
            print('log:')
            print('\tCommit the changes to the log file')

            print('read:')
            print('\tPrint contents of log file')

            print('ext <new_ext>:')
            print('\tChange the file extension to log and compare')

            print('del:')
            print('\tDelete the exist log file')
   
            print('quit:')
            print('\tExit the program')
        elif command[0].lower() == 'quit' or command[0].lower() == 'q':
            print('Thanks for using fileLogger')
            sys.exit(0)
            