

### Usage

To properly use custom Composite Actions, this is the following syntax that must be incorperated into your workflow. 

```yaml
- run: echo "🎉 The job was automatically triggered by a ${{ github.event_name }} event."
      - name: Check out repository
        uses: actions/checkout@v3  
      - name: Hello World
        uses: ./.github/actions/hello-world
        id: hello
        with:
          who-to-greet: 'Alejandro Armas'
```