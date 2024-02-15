import React from 'react';

import { useState } from 'react';
import Ride from './Ride';


const ScheduledRide=()=>{

const[ride,setRide]=useState([
  {
       route_id: 1,
       start_point: 'Point A',
       end_point: 'Point B',
       travel_date: '2024-02-20',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
  },

  {
    route_id: 2,
    start_point: 'Point c',
    end_point: 'Point D',
    travel_date: '2024-02-20',
   description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
}
]);


  return(
    <div className='font-serif text-6xl  justify-center mb-60   pb-2 pt-2  mt-2  '>
    <p>All Rides</p> 
    <p>List of Rides As Follows</p>
  

    {
      ride.length > 0
      ? ride.map((item)=><Ride ride={item}/>):"No Rides"
      
    }


</div>
  );

};
export default ScheduledRide;






// const App = () => {
//   const ScheduledRide = [
//     // Sample ride objects
//     {
//       route_id: 1,
//       start_point: 'Point A',
//       end_point: 'Point B',
//       travel_date: '2024-02-20',
//       description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//     },
//     // More ride objects...
//   ];

//   return (
//     <div>
//       <ScheduledRide ScheduledRide={ScheduledRide} />
//     </div>
//   );
// };

// export default App;
