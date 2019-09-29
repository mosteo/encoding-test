with Ada.Text_IO; use Ada.Text_IO;

with GNATCOLL.VFS; use GNATCOLL.VFS;

procedure List is
   Files : constant File_Array_Access :=
             Read_Dir_Recursive (Get_Current_Dir);
begin
   for File of Files.all loop
      Put_Line (String (Base_Name (File)) & " "
                & String (Base_Name (File))'Length'Img & " "
                & Display_Base_Name (File) & " "
                & Display_Base_Name (File)'Length'Img);
   end loop;
end List;
