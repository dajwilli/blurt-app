@Blurt = React.createClass
  getInitialState: ->
    blurt: @props

  render: ->
    <div className="event" >
      <div className="content">
        <div className="summary left floated">
          <a className="user right floated">
            Anonymous:
          </a> {@state.blurt.message}
        </div>
      </div>
      <i className="remove icon right floated delete blurt"></i>
    </div>