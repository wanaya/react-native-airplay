/**
 * Created by guillermoanaya on 6/14/16.
 */
import {requireNativeComponent} from 'react-native';
import React, {Component, PropTypes} from 'react';

let AirPlayButton = requireNativeComponent('AirPlayButton', RAirPlayButton);

class RAirPlayButton extends Component {

  render() {
    return (<AirPlayButton {...this.props} />);
  } 
}

module.exports = RAirPlayButton