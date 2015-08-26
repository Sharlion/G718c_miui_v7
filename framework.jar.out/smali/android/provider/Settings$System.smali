.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"

.field public static final ADVANCED_SETTINGS_DEFAULT:I = 0x0

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"

.field public static final APP_CONPONENTNAME_ITEM1:Ljava/lang/String; = "lockscreen_conponentname_item1"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final APP_CONPONENTNAME_ITEM2:Ljava/lang/String; = "lockscreen_conponentname_item2"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final APP_CONPONENTNAME_ITEM3:Ljava/lang/String; = "lockscreen_conponentname_item3"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final APP_CONPONENTNAME_ITEM4:Ljava/lang/String; = "lockscreen_conponentname_item4"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final APP_CONPONENTNAME_ITEM5:Ljava/lang/String; = "lockscreen_conponentname_item5"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final APP_CONPONENTNAME_ITEM6:Ljava/lang/String; = "lockscreen_conponentname_item6"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLACK_GESTURE_ENABLED:Ljava/lang/String; = "black_gesture_enabled"

.field public static final BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"

.field public static final BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONNECT_TO_PC_ASK_ME:Ljava/lang/String; = "connect_to_pc_ask_me"

.field public static final CONNECT_TO_PC_DEFAULT_TYPE:Ljava/lang/String; = "connect_to_pc_default_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CT_TIME_DISPLAY_MODE:Ljava/lang/String; = "ct_time_display_mode"

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

.field public static final DEFAULT_ONEHANDOPERATION_CALCULATOR_ON:Ljava/lang/String; = "default_onehandoperation_calculator_on"

.field public static final DEFAULT_ONEHANDOPERATION_DIALPAD_INCALL_ON:Ljava/lang/String; = "default_onehandoperation_dialpad_incall_on"

.field public static final DEFAULT_ONEHANDOPERATION_KEYBOARD_ON:Ljava/lang/String; = "default_onehandoperation_keyboard_on"

.field public static final DEFAULT_ONEHANDOPERATION_ON:Ljava/lang/String; = "default_onehandoperation_on"

.field public static final DEFAULT_ONEHANDOPERATION_UNLOCK_ON:Ljava/lang/String; = "default_onehandoperation_unlock_on"

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIM_SCREEN:Ljava/lang/String; = "dim_screen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"

.field public static final DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"

.field public static final EGG_MODE:Ljava/lang/String; = "egg_mode"

.field public static final EMODE_SWITCH:Ljava/lang/String; = "emode_switch"

.field public static final ENABLE_FAST_POWERON:Ljava/lang/String; = "enable_fast_poweron"

.field public static final END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"

.field public static final END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field public static final FLIPFONT:Ljava/lang/String; = "flipfont"

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field public static final HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final HEARING_AID:Ljava/lang/String; = "hearing_aid"

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY:Ljava/lang/String; = "hide_rotation_lock_toggle_for_accessibility"

.field public static final HOTSPOT_SLEEP_POLICY:Ljava/lang/String; = "hotspot_sleep_policy"

.field public static final HOTSPOT_SLEEP_POLICY_DEFAULT:I = 0x0

.field public static final HOTSPOT_SLEEP_POLICY_FIFTEEN_MINUTES:I = 0x1

.field public static final HOTSPOT_SLEEP_POLICY_NEVER:I = 0x2

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IPCALL_PREFIX:[Ljava/lang/String;

.field public static final KEY_GESTURE:Ljava/lang/String; = "key_gesture"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final KEY_GESTURE_LOCKSCREEN:Ljava/lang/String; = "key_gesture_lockscreen"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final KEY_GESTURE_NOT_NULL:Ljava/lang/String; = "key_gesture_not_null"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final KEY_LOCKSCREEN_EASY_ACCESS:Ljava/lang/String; = "key_lockscreen_easy_access"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final KEY_LOCKSCREEN_WAVE_CLING:Ljava/lang/String; = "key_lockscreen_wave_cling"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final KEY_LOCKSCREEN_WEATHER:Ljava/lang/String; = "key_lockscreen_weather"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final KEY_WALLPAPER_FOR_BOTH:Ljava/lang/String; = "key_wallpaper_for_both"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen.disabled"

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"

.field public static final NEXT_ALARM_NAME:Ljava/lang/String; = "next_alarm_name"

.field public static final NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_time"

.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field public static final NOTIFICATION_SOUND_2:Ljava/lang/String; = "notification_sound_2"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POINTER_LOCATION:Ljava/lang/String; = "pointer_location"

.field public static final POINTER_SPEED:Ljava/lang/String; = "pointer_speed"

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROXIMITY_SENSOR:Ljava/lang/String; = "proximity_sensor"

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final RINGTONE_2:Ljava/lang/String; = "ringtone_2"

.field public static final SAVE_LOCATION:Ljava/lang/String; = "save_location"

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field public static final SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field public static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field public static final SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field public static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"

.field public static final SHOW_CALL_DURATION:Ljava/lang/String; = "show_call_duration"

.field public static final SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_TOUCHES:Ljava/lang/String; = "show_touches"

.field public static final SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"

.field public static final SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"

.field public static final SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"

.field public static final SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"

.field public static final SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"

.field public static final SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_system_version"

.field public static final TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"

.field public static final TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"

.field public static final TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"

.field public static final TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field public static final TIME_12_24:Ljava/lang/String; = "time_12_24"

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE:Ljava/lang/String; = "tty_mode"

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_ROTATION:Ljava/lang/String; = "user_rotation"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field public static final VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field public static final VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field public static final VIBRATE_WHEN_RINGING2:Ljava/lang/String; = "vibrate_when_ringing2"

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"

.field public static final VOLUME_MASTER:Ljava/lang/String; = "volume_master"

.field public static final VOLUME_MASTER_MUTE:Ljava/lang/String; = "volume_master_mute"

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String;

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WFD_WIFI_STATUS:Ljava/lang/String; = "wfd_wifi_status"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SOFTAP_IP_RANGE_END:Ljava/lang/String; = "wifi_softap_ip_range_end"

.field public static final WIFI_SOFTAP_IP_RANGE_START:Ljava/lang/String; = "wifi_softap_ip_range_start"

.field public static final WIFI_SOFTAP_NETMASK:Ljava/lang/String; = "wifi_softap_netmask"

.field public static final WIFI_SOFTAP_STATIC_IP:Ljava/lang/String; = "wifi_softap_static_ip"

.field public static final WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ORIENTATION_LISTENER_LOG:Ljava/lang/String; = "window_orientation_listener_log"

.field private static final profilefilePath:Ljava/lang/String; = "/persist/profile.conf"

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1027
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 1030
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-string/jumbo v1, "sys.settings_system_version"

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "GET_system"

    const-string v4, "PUT_system"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 1038
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 1039
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1040
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1041
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1042
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_biometric_weak_flags"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1043
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1044
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1045
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1046
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "logging_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1047
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1048
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_last_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1049
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_redirect_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1050
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_classname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1051
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1052
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1053
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1054
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1055
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1056
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1057
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ap_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1058
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1059
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1060
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1061
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_initial_ignored_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1062
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_max_ap_checks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1063
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1064
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1065
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1066
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1072
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 1073
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 1077
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1078
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1079
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1080
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1081
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1082
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1083
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1086
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1087
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1088
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1089
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "auto_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1090
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "auto_time_zone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1091
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "car_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1092
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "car_undock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1093
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "desk_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1094
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "desk_undock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1095
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dock_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1096
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "lock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1097
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "unlock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1098
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "low_battery_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1099
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "power_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1100
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1101
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_sleep_policy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1102
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "mode_ringer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1103
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "window_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1104
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "transition_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1105
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "animator_duration_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1106
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "fancy_ime_animations"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1107
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "compatibility_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1108
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "emergency_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1109
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "call_auto_retry"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1110
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "debug_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1111
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wait_for_debugger"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1112
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "show_processes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1113
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "always_finish_activities"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1114
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tzinfo_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1115
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tzinfo_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1116
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "selinux_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1117
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "selinux_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1118
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sms_short_codes_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1119
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sms_short_codes_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1120
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cert_pin_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1121
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cert_pin_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2202
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "volume_voice"

    aput-object v1, v0, v5

    const-string/jumbo v1, "volume_system"

    aput-object v1, v0, v6

    const-string/jumbo v1, "volume_ring"

    aput-object v1, v0, v7

    const-string/jumbo v1, "volume_music"

    aput-object v1, v0, v8

    const-string/jumbo v1, "volume_alarm"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string/jumbo v2, "volume_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 2245
    const-string/jumbo v0, "ringtone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 2257
    const-string/jumbo v0, "ringtone_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    .line 2275
    const-string/jumbo v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2290
    const-string/jumbo v0, "notification_sound_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    .line 2306
    const-string v0, "alarm_alert"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 2724
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "ipcall_prefix_sub1"

    aput-object v1, v0, v5

    const-string v1, "ipcall_prefix_sub2"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/Settings$System;->IPCALL_PREFIX:[Ljava/lang/String;

    .line 2756
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "stay_on_while_plugged_in"

    aput-object v1, v0, v5

    const-string/jumbo v1, "wifi_use_static_ip"

    aput-object v1, v0, v6

    const-string/jumbo v1, "wifi_static_ip"

    aput-object v1, v0, v7

    const-string/jumbo v1, "wifi_static_gateway"

    aput-object v1, v0, v8

    const-string/jumbo v1, "wifi_static_netmask"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string/jumbo v2, "wifi_static_dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_discoverability"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_discoverability_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dim_screen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "screen_off_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "screen_brightness"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "screen_brightness_mode"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "screen_auto_brightness_adj"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "vibrate_input_devices"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "mode_ringer_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "volume_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "volume_system"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "volume_ring"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "volume_music"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "volume_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "volume_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "volume_voice_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "volume_system_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "volume_ring_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "volume_music_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "volume_alarm_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "volume_notification_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "volume_bluetooth_sco_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "auto_replace"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "auto_caps"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "auto_punctuate"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "show_password"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "auto_time"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "auto_time_zone"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "time_12_24"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "date_format"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "dtmf_tone_type"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "hearing_aid"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "tty_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "sound_effects_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "haptic_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "power_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "dock_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "lockscreen_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "show_web_suggestions"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "notification_light_pulse"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "sip_call_options"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "sip_receive_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "pointer_speed"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "notification_sound"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "emode_switch"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static changeProfile(Landroid/content/Context;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamType"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1660
    sget-boolean v6, Landroid/util/Config;->ZTE_FEATURE_SETTINGS_NEW_PROFILEMODE:Z

    if-nez v6, :cond_1

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    if-ne p1, v10, :cond_0

    .line 1665
    const/4 v4, 0x0

    .line 1666
    .local v4, "profile_vibrate":I
    const/4 v3, 0x0

    .line 1667
    .local v3, "profile_ring":I
    const/4 v5, 0x0

    .line 1668
    .local v5, "profile_vol":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1669
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 1671
    .local v2, "mAudioManager":Landroid/media/AudioManager;
    const-string v6, "current_profile"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1673
    const-string v6, "current_profile"

    const-string v7, "1"

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1674
    const v6, 0x1040030

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1676
    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 1678
    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 1680
    const/4 v4, 0x1

    .line 1681
    const/4 v3, 0x0

    .line 1715
    :cond_3
    :goto_1
    invoke-virtual {v2, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 1716
    const-string/jumbo v6, "profile_ring"

    invoke-static {v1, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1717
    const-string/jumbo v6, "profile_vibrate"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1718
    const-string/jumbo v6, "profile_vol"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1720
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.settings.profile.REFRESH"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1721
    .local v0, "broadcast":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1683
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_4
    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 1685
    const/4 v4, 0x0

    .line 1686
    const/4 v3, 0x0

    goto :goto_1

    .line 1689
    :cond_5
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 1691
    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 1693
    const/4 v4, 0x1

    .line 1694
    const/4 v3, 0x1

    goto :goto_1

    .line 1696
    :cond_6
    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 1698
    const/4 v4, 0x1

    .line 1699
    const/4 v3, 0x1

    goto :goto_1

    .line 1704
    :cond_7
    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v6

    if-ne v6, v9, :cond_8

    .line 1706
    const/4 v4, 0x0

    .line 1707
    const/4 v3, 0x1

    goto :goto_1

    .line 1711
    :cond_8
    const/4 v4, 0x0

    .line 1712
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static clearConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "inoutConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1496
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1497
    return-void
.end method

.method public static getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1478
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V

    .line 1479
    return-void
.end method

.method public static getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    .prologue
    .line 1484
    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1486
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1487
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings;->getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V

    .line 1489
    :cond_0
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1429
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 1395
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 1401
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1403
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1405
    .end local p2    # "def":F
    :cond_0
    :goto_0
    return p2

    .line 1404
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 1405
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1435
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1436
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1437
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1440
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 1223
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1264
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1228
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1230
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1232
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .line 1231
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 1308
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1349
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1351
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1314
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1317
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1321
    .local v2, "value":J
    :goto_0
    return-wide v2

    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .line 1317
    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1126
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1127
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1128
    return-void
.end method

.method public static getNonLegacyMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1133
    return-void
.end method

.method private static getPropFromConf(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "properties"    # Ljava/lang/String;

    .prologue
    .line 1637
    sget-boolean v5, Landroid/util/Config;->ZTE_FEATURE_SETTINGS_NEW_PROFILEMODE:Z

    if-nez v5, :cond_0

    .line 1638
    const-string v0, "Unavailable"

    .line 1656
    :goto_0
    return-object v0

    .line 1643
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/persist/profile.conf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1644
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1645
    .local v4, "stream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 1646
    .local v3, "mProperties":Ljava/util/Properties;
    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1647
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1648
    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "VersionStr":Ljava/lang/String;
    goto :goto_0

    .line 1649
    .end local v0    # "VersionStr":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "mProperties":Ljava/util/Properties;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 1650
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Settings"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1654
    const-string v0, "Unavailable"

    goto :goto_0
.end method

.method public static getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1525
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method public static getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 1534
    const-string v1, "SHOW_GTALK_SERVICE_STATUS"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1148
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1158
    :goto_0
    return-object v0

    .line 1153
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    :cond_1
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Global, returning read-only value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1158
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1195
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1205
    :goto_0
    return-object v0

    .line 1200
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    :cond_1
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Global, returning read-only global URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1205
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasInterestingConfigurationChanges(I)Z
    .locals 1
    .param p0, "changes"    # I

    .prologue
    .line 1519
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1508
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    .prologue
    .line 1514
    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 1460
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 1466
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1284
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1290
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1371
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1377
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1169
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 1175
    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :goto_0
    return v0

    .line 1180
    :cond_0
    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1181
    :cond_1
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Global, value is unchanged."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1185
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static setProfileMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1563
    sget-boolean v9, Landroid/util/Config;->ZTE_FEATURE_SETTINGS_NEW_PROFILEMODE:Z

    if-nez v9, :cond_1

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1567
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1570
    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1571
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 1572
    .local v2, "mAudioManager":Landroid/media/AudioManager;
    const-string v9, "current_profile"

    invoke-static {v1, v9, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1573
    const/4 v3, 0x1

    .line 1574
    .local v3, "profile_ring":I
    const/4 v4, 0x0

    .line 1575
    .local v4, "profile_vibrate":I
    const/4 v5, 0x5

    .line 1576
    .local v5, "profile_vol":I
    const/4 v7, 0x0

    .line 1577
    .local v7, "vibrateMode":I
    const/4 v6, 0x0

    .line 1578
    .local v6, "ringMode":I
    const/4 v8, 0x0

    .line 1579
    .local v8, "vibratewhenring":I
    const-string v9, "1"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1581
    const-string/jumbo v9, "profile_ring"

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1582
    const-string/jumbo v9, "profile_vibrate"

    invoke-static {v1, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1583
    const-string/jumbo v9, "profile_vol"

    const/4 v10, 0x5

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1591
    :goto_1
    if-nez v3, :cond_4

    .line 1593
    if-nez v4, :cond_3

    .line 1595
    const/4 v6, 0x2

    .line 1596
    const/4 v7, 0x2

    .line 1597
    const/4 v8, 0x0

    .line 1624
    :goto_2
    const/4 v9, 0x2

    invoke-virtual {v2, v9, v5, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1625
    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1626
    invoke-virtual {v2, v11, v7}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1628
    const-string/jumbo v9, "vibrate_when_ringing"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1630
    const-string v9, "Settings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vibrateMode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const-string v9, "Settings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ringMode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.android.settings.profile.REFRESH"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1633
    .local v0, "broadcast":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1587
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "profile_mode_ring_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/Settings$System;->getPropFromConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1588
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "profile_mode_vib_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/Settings$System;->getPropFromConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1589
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "profile_mode_vol_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/Settings$System;->getPropFromConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    .line 1602
    :cond_3
    const/4 v6, 0x2

    .line 1603
    const/4 v7, 0x1

    .line 1604
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1609
    :cond_4
    if-nez v4, :cond_5

    .line 1611
    const/4 v6, 0x0

    .line 1612
    const/4 v7, 0x2

    .line 1613
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1618
    :cond_5
    const/4 v6, 0x1

    .line 1619
    const/4 v7, 0x1

    .line 1620
    const/4 v8, 0x0

    goto/16 :goto_2
.end method

.method public static setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1540
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V

    .line 1541
    return-void
.end method

.method public static setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1550
    const-string v1, "SHOW_GTALK_SERVICE_STATUS"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1551
    return-void

    .line 1550
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
