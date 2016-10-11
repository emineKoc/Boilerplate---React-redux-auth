import React from 'react';
import EventForm from './EventForm';

class NewEventPage extends React.Component {
  render() {
    return (
      <div>
         <h1>You successfully signedin, Good job</h1>
        <EventForm />
      </div>
    );
  }
}

export default NewEventPage;
