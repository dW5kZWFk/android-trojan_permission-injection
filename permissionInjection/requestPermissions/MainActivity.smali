.class public Lcom/example/simple_app/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private appBarConfiguration:Landroidx/navigation/ui/AppBarConfiguration;

.field private binding:Lcom/example/simple_app/databinding/ActivityMainBinding;


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

.local v0, "c":Landroid/content/Context; 

invoke-virtual {p0, v0}, Lcom/example/simple\_app/MainActivity
    ;->request_permissions(Landroid/content/Context;)V 

.line 27
new-instance v1, Landroid/content/Intent;

new-instance v2, Ljava/lang/StringBuilder;

invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

const-string v3, "package:"

invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

invoke-virtual {p0}, Lcom/example/simple\_app/MainActivity
    ;->getPackageName()Ljava/lang/String;

move-result-object v3

invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

move-result-object v2

invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

move-result-object v2

const-string v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

.line 28
.local v1, "intent":Landroid/content/Intent;
invoke-virtual {p0, v1}, Lcom/example/simple\_app/MainActivity
    ;->startActivity(Landroid/content/Intent;)V

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

.method public request_permissions(Landroid/content/Context;)V 

    .locals 14 

    .param p1, "context"    # Landroid/content/Context; 

  

    .line 81 

    const-string v0, "android.permission.CAMERA" 

  

    const-string v1, "android.permission.RECORD_AUDIO" 

  

    const-string v2, "android.permission.ACCESS_FINE_LOCATION" 

  

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION" 

  

    const-string v4, "android.permission.READ_PHONE_STATE" 

  

    const-string v5, "android.permission.READ_SMS" 
  

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE" 

  

    const-string v7, "android.permission.READ_CALL_LOG" 

  

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String; 

  

    move-result-object v0 

  

    .line 90 

    .local v0, "allPermissionsNeeded":[Ljava/lang/String; 

    new-instance v1, Ljava/util/ArrayList; 

  

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V 

  

    .line 93 

    .local v1, "permissionsNeeded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" 

    array-length v2, v0 

  

    const/4 v3, 0x0 

  

    const/4 v4, 0x0 

  

    :goto_0 

    if-ge v4, v2, :cond_1 

  

    aget-object v5, v0, v4 

  

    .line 95 

    .local v5, "permission":Ljava/lang/String; 

    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I 

  

    move-result v6 

  

    if-eqz v6, :cond_0 

  

    .line 97 

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z 

  

    .line 93 

    .end local v5    # "permission":Ljava/lang/String; 

    :cond_0 

    add-int/lit8 v4, v4, 0x1 

  

    goto :goto_0 

  

    .line 101 

    :cond_1 

    invoke-interface {v1}, Ljava/util/List;->size()I 

  

    move-result v2 

  

    if-lez v2, :cond_2 

  

    .line 102 

    nop 

  

    .line 103 

    invoke-interface {v1}, Ljava/util/List;->size()I 

  

    move-result v2 

  

    new-array v2, v2, [Ljava/lang/String; 

  

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object; 

  

    move-result-object v2 

  

    check-cast v2, [Ljava/lang/String; 

  

    .line 102 

    invoke-static {p0, v2, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V 

  

    .line 107 

    :cond_2 

    return-void 

.end method 
