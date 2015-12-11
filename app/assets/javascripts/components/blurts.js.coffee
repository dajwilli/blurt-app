@Blurts = React.createClass
  getInitialState: ->
    blurts: @props.data
  addBlurt: (blurt) ->
    blurts = React.addons.update(@state.blurts, { $push: [blurt] })
    @setState blurts: blurts

  render: ->
    list = @state.blurts.map((blurtProps) ->
        return <Blurt key={blurtProps.id} {...blurtProps} />
      )
    <div>
      <h1>Blurts</h1>
      <div className="ui large feed">
        {list}
      </div>
      <BlurtForm handleNewBlurt={@addBlurt}/>
    </div>