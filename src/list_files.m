function [ file_list ] = list_files( folder_name, options )
%LIST_FILES Summary of this function goes here
%  get all files in the folder_name

list = dir(folder_name);          %get info of files/folders in current directory
isfile = ~[list.isdir];           %determine index of files vs folders
file_list = {list(isfile).name};  %create cell array of file names

end

