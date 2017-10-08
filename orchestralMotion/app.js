function main(){
	const osc = new OSC()
	
	osc.on('/param/density', (message) => {
		console.log(message.args)
	})
	
	osc.on(['param', 'volume'], (message) => {
		console.log(message.args)
	})
	
	osc.on('open', () => {
		const message = new OSC.Message('/test', 12.221, 'hello')
		osc.send(message)
		
		const bundle = new OSC.Bundle(Date.now() + 5000)
		bundle.add(message)
		osc.send(bundle, { host: '192.168.178.5' })
	})
	
	osc.open({ port: 9000 })
}