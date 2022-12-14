-- This package provides the various driving modes for a car. It does so by 
-- creating a set of wheels and then setting the individual wheels to either 
-- drive forwards, backwards or stop as required.

with Wheel;

package Wheels is
   
   -- Creates a set of wheels as a type and sets each set
   -- Each number on the pin is in this order: Pwm_pin, Forward_pin, Backward_pin
   type Set_of_wheels is record                                                  
      Front_left_wheel : Wheel.Single_wheel  := (0,6,7);
      Front_right_wheel : Wheel.Single_wheel  := (1,12,13);
      Back_left_wheel : Wheel.Single_wheel  := (0,14,15);
      Back_right_wheel : Wheel.Single_wheel  := (1,2,3);
   end record;
   
   procedure Drive_forward (Self : Set_of_wheels);
   procedure Brake (Self : Set_of_wheels);
   procedure Rotate_clockwise (Self : Set_of_wheels);
 --  procedure Drive_backwards (Self : Set_of_wheels);
 --  procedure Forward_left (Self : Set_of_wheels);
 --  procedure Forward_right (Self : Set_of_wheels);
 --  procedure Backward_left (Self : Set_of_wheels);
 --  procedure Backward_right (Self : Set_of_wheels);
 --  procedure Turn_left (Self : Set_of_wheels);
 --  procedure Turn_right (Self : Set_of_wheels);
 --  procedure Rotate_anticlockwise (Self : Set_of_wheels);
 --  procedure Sideways_Left (Self : Set_of_wheels);
 --  procedure Sideways_Right (Self : Set_of_wheels);
 --  procedure Lateral_arc_anticlockwise (Self : Set_of_wheels);
 --  procedure Lateral_arc_clockwise (Self : Set_of_wheels);

end Wheels;
