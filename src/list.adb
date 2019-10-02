with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

with GNATCOLL.VFS; use GNATCOLL.VFS;

procedure List is
   Files : constant File_Array_Access :=
             Read_Dir_Recursive (Get_Current_Dir);
begin
   for File of Files.all loop
      Put (String (Base_Name (File)) & " "
           & String (Base_Name (File))'Length'Img & " "
           & Display_Base_Name (File) & " "
           & Display_Base_Name (File)'Length'Img);
      Put (" ");
      for Char of Display_Base_Name (File) loop
         Put (Character'Pos (Char), Width => 2, Base => 16);
         Put (" ");
      end loop;
      New_Line;
   end loop;
end List;
