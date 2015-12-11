@Blurts = React.createClass
  getInitialState: ->
    blurts: @props.data

  render: ->
    list = @state.blurts.map((blurtProps) ->
        return <Blurt key={blurtProps.id} {...blurtProps} />
      )
    <div>
      <h1>Blurts</h1>
      <div className="ui large feed">
        {list}
      </div>
    </div>