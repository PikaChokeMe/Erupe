PGDMP     5                     {           erupe    14.5    14.5 �    o           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            p           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            r           1262    93565    erupe    DATABASE     e   CREATE DATABASE erupe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Australia.1252';
    DROP DATABASE erupe;
                postgres    false            t           1247    93567 
   event_type    TYPE     [   CREATE TYPE public.event_type AS ENUM (
    'festa',
    'diva',
    'vs',
    'mezfes'
);
    DROP TYPE public.event_type;
       public          postgres    false            w           1247    93576    festival_colour    TYPE     R   CREATE TYPE public.festival_colour AS ENUM (
    'none',
    'red',
    'blue'
);
 "   DROP TYPE public.festival_colour;
       public          postgres    false            z           1247    93584    guild_application_type    TYPE     T   CREATE TYPE public.guild_application_type AS ENUM (
    'applied',
    'invited'
);
 )   DROP TYPE public.guild_application_type;
       public          postgres    false            }           1247    93590 
   prize_type    TYPE     G   CREATE TYPE public.prize_type AS ENUM (
    'personal',
    'guild'
);
    DROP TYPE public.prize_type;
       public          postgres    false            �           1247    93596    uint16    DOMAIN     m   CREATE DOMAIN public.uint16 AS integer
	CONSTRAINT uint16_check CHECK (((VALUE >= 0) AND (VALUE <= 65536)));
    DROP DOMAIN public.uint16;
       public          postgres    false            �           1247    93599    uint8    DOMAIN     j   CREATE DOMAIN public.uint8 AS smallint
	CONSTRAINT uint8_check CHECK (((VALUE >= 0) AND (VALUE <= 255)));
    DROP DOMAIN public.uint8;
       public          postgres    false            �            1259    93626    achievements    TABLE     �  CREATE TABLE public.achievements (
    id integer NOT NULL,
    ach0 integer DEFAULT 0,
    ach1 integer DEFAULT 0,
    ach2 integer DEFAULT 0,
    ach3 integer DEFAULT 0,
    ach4 integer DEFAULT 0,
    ach5 integer DEFAULT 0,
    ach6 integer DEFAULT 0,
    ach7 integer DEFAULT 0,
    ach8 integer DEFAULT 0,
    ach9 integer DEFAULT 0,
    ach10 integer DEFAULT 0,
    ach11 integer DEFAULT 0,
    ach12 integer DEFAULT 0,
    ach13 integer DEFAULT 0,
    ach14 integer DEFAULT 0,
    ach15 integer DEFAULT 0,
    ach16 integer DEFAULT 0,
    ach17 integer DEFAULT 0,
    ach18 integer DEFAULT 0,
    ach19 integer DEFAULT 0,
    ach20 integer DEFAULT 0,
    ach21 integer DEFAULT 0,
    ach22 integer DEFAULT 0,
    ach23 integer DEFAULT 0,
    ach24 integer DEFAULT 0,
    ach25 integer DEFAULT 0,
    ach26 integer DEFAULT 0,
    ach27 integer DEFAULT 0,
    ach28 integer DEFAULT 0,
    ach29 integer DEFAULT 0,
    ach30 integer DEFAULT 0,
    ach31 integer DEFAULT 0,
    ach32 integer DEFAULT 0
);
     DROP TABLE public.achievements;
       public         heap    postgres    false            �            1259    93662    airou_id_seq    SEQUENCE     u   CREATE SEQUENCE public.airou_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.airou_id_seq;
       public          postgres    false            �            1259    93663    cafe_accepted    TABLE     g   CREATE TABLE public.cafe_accepted (
    cafe_id integer NOT NULL,
    character_id integer NOT NULL
);
 !   DROP TABLE public.cafe_accepted;
       public         heap    postgres    false            �            1259    93666 	   cafebonus    TABLE     �   CREATE TABLE public.cafebonus (
    id integer NOT NULL,
    time_req integer NOT NULL,
    item_type integer NOT NULL,
    item_id integer NOT NULL,
    quantity integer NOT NULL
);
    DROP TABLE public.cafebonus;
       public         heap    postgres    false            �            1259    93669    cafebonus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cafebonus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cafebonus_id_seq;
       public          postgres    false    212            s           0    0    cafebonus_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cafebonus_id_seq OWNED BY public.cafebonus.id;
          public          postgres    false    213            �            1259    93670 
   characters    TABLE     �  CREATE TABLE public.characters (
    id integer NOT NULL,
    user_id bigint,
    is_female boolean,
    is_new_character boolean,
    name character varying(15),
    unk_desc_string character varying(31),
    gr public.uint16,
    hrp public.uint16,
    weapon_type public.uint16,
    last_login integer,
    savedata bytea,
    decomyset bytea,
    hunternavi bytea,
    otomoairou bytea,
    partner bytea,
    platebox bytea,
    platedata bytea,
    platemyset bytea,
    rengokudata bytea,
    savemercenary bytea,
    restrict_guild_scout boolean DEFAULT false NOT NULL,
    minidata bytea,
    gacha_items bytea,
    daily_time timestamp with time zone,
    house_info bytea,
    login_boost bytea,
    skin_hist bytea,
    kouryou_point integer,
    gcp integer,
    guild_post_checked timestamp with time zone DEFAULT now() NOT NULL,
    time_played integer DEFAULT 0 NOT NULL,
    weapon_id integer DEFAULT 0 NOT NULL,
    scenariodata bytea,
    savefavoritequest bytea,
    friends text DEFAULT ''::text NOT NULL,
    blocked text DEFAULT ''::text NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    cafe_time integer DEFAULT 0,
    netcafe_points integer DEFAULT 0,
    boost_time timestamp with time zone,
    cafe_reset timestamp with time zone,
    bonus_quests integer DEFAULT 0 NOT NULL,
    daily_quests integer DEFAULT 0 NOT NULL,
    promo_points integer DEFAULT 0 NOT NULL,
    rasta_id integer,
    pact_id integer,
    stampcard integer DEFAULT 0 NOT NULL,
    mezfes bytea
);
    DROP TABLE public.characters;
       public         heap    postgres    false    896    896    896            �            1259    93684    characters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.characters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.characters_id_seq;
       public          postgres    false    214            t           0    0    characters_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.characters_id_seq OWNED BY public.characters.id;
          public          postgres    false    215            �            1259    93685    distribution    TABLE     e  CREATE TABLE public.distribution (
    id integer NOT NULL,
    character_id integer,
    type integer NOT NULL,
    deadline timestamp with time zone,
    event_name text DEFAULT 'GM Gift!'::text NOT NULL,
    description text DEFAULT '~C05You received a gift!'::text NOT NULL,
    times_acceptable integer DEFAULT 1 NOT NULL,
    min_hr integer DEFAULT 65535 NOT NULL,
    max_hr integer DEFAULT 65535 NOT NULL,
    min_sr integer DEFAULT 65535 NOT NULL,
    max_sr integer DEFAULT 65535 NOT NULL,
    min_gr integer DEFAULT 65535 NOT NULL,
    max_gr integer DEFAULT 65535 NOT NULL,
    data bytea NOT NULL
);
     DROP TABLE public.distribution;
       public         heap    postgres    false            �            1259    93699    distribution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.distribution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.distribution_id_seq;
       public          postgres    false    216            u           0    0    distribution_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.distribution_id_seq OWNED BY public.distribution.id;
          public          postgres    false    217            �            1259    93700    distributions_accepted    TABLE     f   CREATE TABLE public.distributions_accepted (
    distribution_id integer,
    character_id integer
);
 *   DROP TABLE public.distributions_accepted;
       public         heap    postgres    false            �            1259    93703    events    TABLE     �   CREATE TABLE public.events (
    id integer NOT NULL,
    event_type public.event_type NOT NULL,
    start_time timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.events;
       public         heap    postgres    false    884            �            1259    93707    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    219            v           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    220            �            1259    93708    feature_weapon    TABLE     x   CREATE TABLE public.feature_weapon (
    start_time timestamp with time zone NOT NULL,
    featured integer NOT NULL
);
 "   DROP TABLE public.feature_weapon;
       public         heap    postgres    false            �            1259    93711    festa_prizes    TABLE     �   CREATE TABLE public.festa_prizes (
    id integer NOT NULL,
    type public.prize_type NOT NULL,
    tier integer NOT NULL,
    souls_req integer NOT NULL,
    item_id integer NOT NULL,
    num_item integer NOT NULL
);
     DROP TABLE public.festa_prizes;
       public         heap    postgres    false    893            �            1259    93714    festa_prizes_accepted    TABLE     p   CREATE TABLE public.festa_prizes_accepted (
    prize_id integer NOT NULL,
    character_id integer NOT NULL
);
 )   DROP TABLE public.festa_prizes_accepted;
       public         heap    postgres    false            �            1259    93717    festa_prizes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.festa_prizes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.festa_prizes_id_seq;
       public          postgres    false    222            w           0    0    festa_prizes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.festa_prizes_id_seq OWNED BY public.festa_prizes.id;
          public          postgres    false    224            �            1259    93718    festa_registrations    TABLE     u   CREATE TABLE public.festa_registrations (
    guild_id integer NOT NULL,
    team public.festival_colour NOT NULL
);
 '   DROP TABLE public.festa_registrations;
       public         heap    postgres    false    887            �            1259    93721    festa_trials    TABLE     �   CREATE TABLE public.festa_trials (
    id integer NOT NULL,
    objective integer NOT NULL,
    goal_id integer NOT NULL,
    times_req integer NOT NULL,
    locale_req integer DEFAULT 0 NOT NULL,
    reward integer NOT NULL
);
     DROP TABLE public.festa_trials;
       public         heap    postgres    false            �            1259    93725    festa_trials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.festa_trials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.festa_trials_id_seq;
       public          postgres    false    226            x           0    0    festa_trials_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.festa_trials_id_seq OWNED BY public.festa_trials.id;
          public          postgres    false    227                       1259    94063    fpoint_items    TABLE     �   CREATE TABLE public.fpoint_items (
    id integer NOT NULL,
    item_type integer,
    item_id integer,
    quantity integer,
    fpoints integer,
    trade_type integer
);
     DROP TABLE public.fpoint_items;
       public         heap    postgres    false                       1259    94062    fpoint_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fpoint_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fpoint_items_id_seq;
       public          postgres    false    260            y           0    0    fpoint_items_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fpoint_items_id_seq OWNED BY public.fpoint_items.id;
          public          postgres    false    259                       1259    94101 	   gacha_box    TABLE     h   CREATE TABLE public.gacha_box (
    gacha_id integer,
    entry_id integer,
    character_id integer
);
    DROP TABLE public.gacha_box;
       public         heap    postgres    false                       1259    94085    gacha_entries    TABLE     )  CREATE TABLE public.gacha_entries (
    id integer NOT NULL,
    gacha_id integer,
    entry_type integer,
    item_type integer,
    item_number integer,
    item_quantity integer,
    weight integer,
    rarity integer,
    rolls integer,
    frontier_points integer,
    daily_limit integer
);
 !   DROP TABLE public.gacha_entries;
       public         heap    postgres    false                       1259    94084    gacha_entries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gacha_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.gacha_entries_id_seq;
       public          postgres    false    264            z           0    0    gacha_entries_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.gacha_entries_id_seq OWNED BY public.gacha_entries.id;
          public          postgres    false    263            
           1259    94092    gacha_items    TABLE     �   CREATE TABLE public.gacha_items (
    id integer NOT NULL,
    entry_id integer,
    item_type integer,
    item_id integer,
    quantity integer
);
    DROP TABLE public.gacha_items;
       public         heap    postgres    false            	           1259    94091    gacha_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gacha_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.gacha_items_id_seq;
       public          postgres    false    266            {           0    0    gacha_items_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.gacha_items_id_seq OWNED BY public.gacha_items.id;
          public          postgres    false    265                       1259    94076 
   gacha_shop    TABLE       CREATE TABLE public.gacha_shop (
    id integer NOT NULL,
    min_gr integer,
    min_hr integer,
    name text,
    url_banner text,
    url_feature text,
    url_thumbnail text,
    wide boolean,
    recommended boolean,
    gacha_type integer,
    hidden boolean
);
    DROP TABLE public.gacha_shop;
       public         heap    postgres    false                       1259    94075    gacha_shop_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gacha_shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.gacha_shop_id_seq;
       public          postgres    false    262            |           0    0    gacha_shop_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.gacha_shop_id_seq OWNED BY public.gacha_shop.id;
          public          postgres    false    261                       1259    94098    gacha_stepup    TABLE     g   CREATE TABLE public.gacha_stepup (
    gacha_id integer,
    step integer,
    character_id integer
);
     DROP TABLE public.gacha_stepup;
       public         heap    postgres    false            �            1259    93739    gook    TABLE     �   CREATE TABLE public.gook (
    id integer NOT NULL,
    gook0 bytea,
    gook1 bytea,
    gook2 bytea,
    gook3 bytea,
    gook4 bytea
);
    DROP TABLE public.gook;
       public         heap    postgres    false            �            1259    93744    gook_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.gook_id_seq;
       public          postgres    false    228            }           0    0    gook_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.gook_id_seq OWNED BY public.gook.id;
          public          postgres    false    229            �            1259    93745    guild_adventures    TABLE       CREATE TABLE public.guild_adventures (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    destination integer NOT NULL,
    charge integer DEFAULT 0 NOT NULL,
    depart integer NOT NULL,
    return integer NOT NULL,
    collected_by text DEFAULT ''::text NOT NULL
);
 $   DROP TABLE public.guild_adventures;
       public         heap    postgres    false            �            1259    93752    guild_adventures_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_adventures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.guild_adventures_id_seq;
       public          postgres    false    230            ~           0    0    guild_adventures_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.guild_adventures_id_seq OWNED BY public.guild_adventures.id;
          public          postgres    false    231            �            1259    93753    guild_alliances    TABLE     �   CREATE TABLE public.guild_alliances (
    id integer NOT NULL,
    name character varying(24) NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    parent_id integer NOT NULL,
    sub1_id integer,
    sub2_id integer
);
 #   DROP TABLE public.guild_alliances;
       public         heap    postgres    false            �            1259    93757    guild_alliances_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_alliances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.guild_alliances_id_seq;
       public          postgres    false    232                       0    0    guild_alliances_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.guild_alliances_id_seq OWNED BY public.guild_alliances.id;
          public          postgres    false    233            �            1259    93758    guild_applications    TABLE     "  CREATE TABLE public.guild_applications (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    character_id integer NOT NULL,
    actor_id integer NOT NULL,
    application_type public.guild_application_type NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
 &   DROP TABLE public.guild_applications;
       public         heap    postgres    false    890            �            1259    93762    guild_applications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.guild_applications_id_seq;
       public          postgres    false    234            �           0    0    guild_applications_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.guild_applications_id_seq OWNED BY public.guild_applications.id;
          public          postgres    false    235            �            1259    93763    guild_characters    TABLE     �  CREATE TABLE public.guild_characters (
    id integer NOT NULL,
    guild_id bigint,
    character_id bigint,
    joined_at timestamp with time zone DEFAULT now(),
    avoid_leadership boolean DEFAULT false NOT NULL,
    order_index integer DEFAULT 1 NOT NULL,
    recruiter boolean DEFAULT false NOT NULL,
    souls integer DEFAULT 0,
    rp_today integer DEFAULT 0,
    rp_yesterday integer DEFAULT 0
);
 $   DROP TABLE public.guild_characters;
       public         heap    postgres    false            �            1259    93771    guild_characters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_characters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.guild_characters_id_seq;
       public          postgres    false    236            �           0    0    guild_characters_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.guild_characters_id_seq OWNED BY public.guild_characters.id;
          public          postgres    false    237            �            1259    93772    guild_hunts    TABLE     �  CREATE TABLE public.guild_hunts (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    host_id integer NOT NULL,
    destination integer NOT NULL,
    level integer NOT NULL,
    return integer NOT NULL,
    acquired boolean DEFAULT false NOT NULL,
    claimed boolean DEFAULT false NOT NULL,
    hunters text DEFAULT ''::text NOT NULL,
    treasure text DEFAULT ''::text NOT NULL,
    hunt_data bytea NOT NULL,
    cats_used text NOT NULL
);
    DROP TABLE public.guild_hunts;
       public         heap    postgres    false            �            1259    93781    guild_hunts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_hunts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.guild_hunts_id_seq;
       public          postgres    false    238            �           0    0    guild_hunts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.guild_hunts_id_seq OWNED BY public.guild_hunts.id;
          public          postgres    false    239            �            1259    93782    guild_meals    TABLE     �   CREATE TABLE public.guild_meals (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    meal_id integer NOT NULL,
    level integer NOT NULL,
    created_at timestamp with time zone
);
    DROP TABLE public.guild_meals;
       public         heap    postgres    false            �            1259    93785    guild_meals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_meals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.guild_meals_id_seq;
       public          postgres    false    240            �           0    0    guild_meals_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.guild_meals_id_seq OWNED BY public.guild_meals.id;
          public          postgres    false    241            �            1259    93786    guild_posts    TABLE     Y  CREATE TABLE public.guild_posts (
    id integer NOT NULL,
    guild_id integer NOT NULL,
    author_id integer NOT NULL,
    post_type integer NOT NULL,
    stamp_id integer NOT NULL,
    title text NOT NULL,
    body text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    liked_by text DEFAULT ''::text NOT NULL
);
    DROP TABLE public.guild_posts;
       public         heap    postgres    false            �            1259    93793    guild_posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guild_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.guild_posts_id_seq;
       public          postgres    false    242            �           0    0    guild_posts_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.guild_posts_id_seq OWNED BY public.guild_posts.id;
          public          postgres    false    243            �            1259    93794    guilds    TABLE     f  CREATE TABLE public.guilds (
    id integer NOT NULL,
    name character varying(24),
    created_at timestamp with time zone DEFAULT now(),
    leader_id integer NOT NULL,
    main_motto integer DEFAULT 0,
    rank_rp integer DEFAULT 0 NOT NULL,
    comment character varying(255) DEFAULT ''::character varying NOT NULL,
    icon bytea,
    sub_motto integer DEFAULT 0,
    item_box bytea,
    event_rp integer DEFAULT 0 NOT NULL,
    pugi_name_1 character varying(12) DEFAULT ''::character varying,
    pugi_name_2 character varying(12) DEFAULT ''::character varying,
    pugi_name_3 character varying(12) DEFAULT ''::character varying,
    recruiting boolean DEFAULT true NOT NULL,
    pugi_outfit_1 integer DEFAULT 0 NOT NULL,
    pugi_outfit_2 integer DEFAULT 0 NOT NULL,
    pugi_outfit_3 integer DEFAULT 0 NOT NULL,
    pugi_outfits integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.guilds;
       public         heap    postgres    false            �            1259    93813    guilds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guilds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.guilds_id_seq;
       public          postgres    false    244            �           0    0    guilds_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.guilds_id_seq OWNED BY public.guilds.id;
          public          postgres    false    245                       1259    94104    login_boost    TABLE     �   CREATE TABLE public.login_boost (
    char_id integer,
    week_req integer,
    expiration timestamp with time zone,
    reset timestamp with time zone
);
    DROP TABLE public.login_boost;
       public         heap    postgres    false            �            1259    93828    mail    TABLE     �  CREATE TABLE public.mail (
    id integer NOT NULL,
    sender_id integer NOT NULL,
    recipient_id integer NOT NULL,
    subject character varying DEFAULT ''::character varying NOT NULL,
    body character varying DEFAULT ''::character varying NOT NULL,
    read boolean DEFAULT false NOT NULL,
    attached_item_received boolean DEFAULT false NOT NULL,
    attached_item integer,
    attached_item_amount integer DEFAULT 1 NOT NULL,
    is_guild_invite boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    locked boolean DEFAULT false NOT NULL
);
    DROP TABLE public.mail;
       public         heap    postgres    false            �            1259    93842    mail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mail_id_seq;
       public          postgres    false    246            �           0    0    mail_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.mail_id_seq OWNED BY public.mail.id;
          public          postgres    false    247            �            1259    93851    rengoku_score    TABLE     �   CREATE TABLE public.rengoku_score (
    character_id integer NOT NULL,
    max_stages_mp integer,
    max_points_mp integer,
    max_stages_sp integer,
    max_points_sp integer
);
 !   DROP TABLE public.rengoku_score;
       public         heap    postgres    false            �            1259    93857    servers    TABLE     �   CREATE TABLE public.servers (
    server_id integer NOT NULL,
    season integer NOT NULL,
    current_players integer NOT NULL,
    world_name text,
    world_description text,
    land integer
);
    DROP TABLE public.servers;
       public         heap    postgres    false            �            1259    93843 
   shop_items    TABLE     }  CREATE TABLE public.shop_items (
    shop_type integer,
    shop_id integer,
    id integer NOT NULL,
    item_id public.uint16,
    cost integer,
    quantity public.uint16,
    min_hr public.uint16,
    min_sr public.uint16,
    min_gr public.uint16,
    store_level public.uint16,
    max_quantity public.uint16,
    road_floors public.uint16,
    road_fatalis public.uint16
);
    DROP TABLE public.shop_items;
       public         heap    postgres    false    896    896    896    896    896    896    896    896    896                       1259    94217    shop_items_bought    TABLE     r   CREATE TABLE public.shop_items_bought (
    character_id integer,
    shop_item_id integer,
    bought integer
);
 %   DROP TABLE public.shop_items_bought;
       public         heap    postgres    false                       1259    94215    shop_items_id_seq    SEQUENCE     z   CREATE SEQUENCE public.shop_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.shop_items_id_seq;
       public          postgres    false    248            �           0    0    shop_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.shop_items_id_seq OWNED BY public.shop_items.id;
          public          postgres    false    270            �            1259    93865    sign_sessions    TABLE     �   CREATE TABLE public.sign_sessions (
    user_id integer NOT NULL,
    char_id integer,
    token character varying(16) NOT NULL,
    server_id integer
);
 !   DROP TABLE public.sign_sessions;
       public         heap    postgres    false            �            1259    93868    stamps    TABLE       CREATE TABLE public.stamps (
    character_id integer NOT NULL,
    hl_total integer DEFAULT 0,
    hl_redeemed integer DEFAULT 0,
    hl_next timestamp with time zone,
    ex_total integer DEFAULT 0,
    ex_redeemed integer DEFAULT 0,
    ex_next timestamp with time zone
);
    DROP TABLE public.stamps;
       public         heap    postgres    false            �            1259    93878    titles    TABLE     �   CREATE TABLE public.titles (
    id integer NOT NULL,
    char_id integer NOT NULL,
    unlocked_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.titles;
       public         heap    postgres    false            �            1259    93881    user_binary    TABLE     5  CREATE TABLE public.user_binary (
    id integer NOT NULL,
    type2 bytea,
    type3 bytea,
    house_tier bytea,
    house_state integer,
    house_password text,
    house_data bytea,
    house_furniture bytea,
    bookshelf bytea,
    gallery bytea,
    tore bytea,
    garden bytea,
    mission bytea
);
    DROP TABLE public.user_binary;
       public         heap    postgres    false            �            1259    93886    user_binary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_binary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.user_binary_id_seq;
       public          postgres    false    254            �           0    0    user_binary_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.user_binary_id_seq OWNED BY public.user_binary.id;
          public          postgres    false    255                        1259    93887    users    TABLE     x  CREATE TABLE public.users (
    id integer NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    item_box bytea,
    rights integer DEFAULT 12 NOT NULL,
    last_character integer DEFAULT 0,
    last_login timestamp with time zone,
    return_expires timestamp with time zone,
    gacha_premium integer,
    gacha_trial integer,
    frontier_points integer
);
    DROP TABLE public.users;
       public         heap    postgres    false                       1259    93894    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    256            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    257                       1259    93895 	   warehouse    TABLE     b  CREATE TABLE public.warehouse (
    character_id integer NOT NULL,
    item0 bytea,
    item1 bytea,
    item2 bytea,
    item3 bytea,
    item4 bytea,
    item5 bytea,
    item6 bytea,
    item7 bytea,
    item8 bytea,
    item9 bytea,
    item10 bytea,
    item0name text,
    item1name text,
    item2name text,
    item3name text,
    item4name text,
    item5name text,
    item6name text,
    item7name text,
    item8name text,
    item9name text,
    equip0 bytea,
    equip1 bytea,
    equip2 bytea,
    equip3 bytea,
    equip4 bytea,
    equip5 bytea,
    equip6 bytea,
    equip7 bytea,
    equip8 bytea,
    equip9 bytea,
    equip10 bytea,
    equip0name text,
    equip1name text,
    equip2name text,
    equip3name text,
    equip4name text,
    equip5name text,
    equip6name text,
    equip7name text,
    equip8name text,
    equip9name text
);
    DROP TABLE public.warehouse;
       public         heap    postgres    false            @           2604    93900    cafebonus id    DEFAULT     l   ALTER TABLE ONLY public.cafebonus ALTER COLUMN id SET DEFAULT nextval('public.cafebonus_id_seq'::regclass);
 ;   ALTER TABLE public.cafebonus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            I           2604    93901    characters id    DEFAULT     n   ALTER TABLE ONLY public.characters ALTER COLUMN id SET DEFAULT nextval('public.characters_id_seq'::regclass);
 <   ALTER TABLE public.characters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            X           2604    93902    distribution id    DEFAULT     r   ALTER TABLE ONLY public.distribution ALTER COLUMN id SET DEFAULT nextval('public.distribution_id_seq'::regclass);
 >   ALTER TABLE public.distribution ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            Y           2604    93903 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            [           2604    93904    festa_prizes id    DEFAULT     r   ALTER TABLE ONLY public.festa_prizes ALTER COLUMN id SET DEFAULT nextval('public.festa_prizes_id_seq'::regclass);
 >   ALTER TABLE public.festa_prizes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    222            ]           2604    93905    festa_trials id    DEFAULT     r   ALTER TABLE ONLY public.festa_trials ALTER COLUMN id SET DEFAULT nextval('public.festa_trials_id_seq'::regclass);
 >   ALTER TABLE public.festa_trials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    94066    fpoint_items id    DEFAULT     r   ALTER TABLE ONLY public.fpoint_items ALTER COLUMN id SET DEFAULT nextval('public.fpoint_items_id_seq'::regclass);
 >   ALTER TABLE public.fpoint_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            �           2604    94088    gacha_entries id    DEFAULT     t   ALTER TABLE ONLY public.gacha_entries ALTER COLUMN id SET DEFAULT nextval('public.gacha_entries_id_seq'::regclass);
 ?   ALTER TABLE public.gacha_entries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            �           2604    94095    gacha_items id    DEFAULT     p   ALTER TABLE ONLY public.gacha_items ALTER COLUMN id SET DEFAULT nextval('public.gacha_items_id_seq'::regclass);
 =   ALTER TABLE public.gacha_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            �           2604    94079    gacha_shop id    DEFAULT     n   ALTER TABLE ONLY public.gacha_shop ALTER COLUMN id SET DEFAULT nextval('public.gacha_shop_id_seq'::regclass);
 <   ALTER TABLE public.gacha_shop ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            ^           2604    93906    gook id    DEFAULT     b   ALTER TABLE ONLY public.gook ALTER COLUMN id SET DEFAULT nextval('public.gook_id_seq'::regclass);
 6   ALTER TABLE public.gook ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            a           2604    93907    guild_adventures id    DEFAULT     z   ALTER TABLE ONLY public.guild_adventures ALTER COLUMN id SET DEFAULT nextval('public.guild_adventures_id_seq'::regclass);
 B   ALTER TABLE public.guild_adventures ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            b           2604    93908    guild_alliances id    DEFAULT     x   ALTER TABLE ONLY public.guild_alliances ALTER COLUMN id SET DEFAULT nextval('public.guild_alliances_id_seq'::regclass);
 A   ALTER TABLE public.guild_alliances ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            d           2604    93909    guild_applications id    DEFAULT     ~   ALTER TABLE ONLY public.guild_applications ALTER COLUMN id SET DEFAULT nextval('public.guild_applications_id_seq'::regclass);
 D   ALTER TABLE public.guild_applications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            k           2604    93910    guild_characters id    DEFAULT     z   ALTER TABLE ONLY public.guild_characters ALTER COLUMN id SET DEFAULT nextval('public.guild_characters_id_seq'::regclass);
 B   ALTER TABLE public.guild_characters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            r           2604    93911    guild_hunts id    DEFAULT     p   ALTER TABLE ONLY public.guild_hunts ALTER COLUMN id SET DEFAULT nextval('public.guild_hunts_id_seq'::regclass);
 =   ALTER TABLE public.guild_hunts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            s           2604    93912    guild_meals id    DEFAULT     p   ALTER TABLE ONLY public.guild_meals ALTER COLUMN id SET DEFAULT nextval('public.guild_meals_id_seq'::regclass);
 =   ALTER TABLE public.guild_meals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            u           2604    93913    guild_posts id    DEFAULT     p   ALTER TABLE ONLY public.guild_posts ALTER COLUMN id SET DEFAULT nextval('public.guild_posts_id_seq'::regclass);
 =   ALTER TABLE public.guild_posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    93914 	   guilds id    DEFAULT     f   ALTER TABLE ONLY public.guilds ALTER COLUMN id SET DEFAULT nextval('public.guilds_id_seq'::regclass);
 8   ALTER TABLE public.guilds ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    93915    mail id    DEFAULT     b   ALTER TABLE ONLY public.mail ALTER COLUMN id SET DEFAULT nextval('public.mail_id_seq'::regclass);
 6   ALTER TABLE public.mail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            �           2604    94216    shop_items id    DEFAULT     n   ALTER TABLE ONLY public.shop_items ALTER COLUMN id SET DEFAULT nextval('public.shop_items_id_seq'::regclass);
 <   ALTER TABLE public.shop_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    248            �           2604    93916    user_binary id    DEFAULT     p   ALTER TABLE ONLY public.user_binary ALTER COLUMN id SET DEFAULT nextval('public.user_binary_id_seq'::regclass);
 =   ALTER TABLE public.user_binary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254            �           2604    93917    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256            �           2606    93925    achievements achievements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_pkey;
       public            postgres    false    209            �           2606    93929    cafebonus cafebonus_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cafebonus
    ADD CONSTRAINT cafebonus_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cafebonus DROP CONSTRAINT cafebonus_pkey;
       public            postgres    false    212            �           2606    93931    characters characters_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_pkey;
       public            postgres    false    214            �           2606    93933    distribution distribution_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.distribution
    ADD CONSTRAINT distribution_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.distribution DROP CONSTRAINT distribution_pkey;
       public            postgres    false    216            �           2606    93935    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    219            �           2606    93937    festa_prizes festa_prizes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.festa_prizes
    ADD CONSTRAINT festa_prizes_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.festa_prizes DROP CONSTRAINT festa_prizes_pkey;
       public            postgres    false    222            �           2606    93939    festa_trials festa_trials_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.festa_trials
    ADD CONSTRAINT festa_trials_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.festa_trials DROP CONSTRAINT festa_trials_pkey;
       public            postgres    false    226            �           2606    94068    fpoint_items fpoint_items_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fpoint_items
    ADD CONSTRAINT fpoint_items_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fpoint_items DROP CONSTRAINT fpoint_items_pkey;
       public            postgres    false    260            �           2606    94090     gacha_entries gacha_entries_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.gacha_entries
    ADD CONSTRAINT gacha_entries_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.gacha_entries DROP CONSTRAINT gacha_entries_pkey;
       public            postgres    false    264            �           2606    94097    gacha_items gacha_items_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.gacha_items
    ADD CONSTRAINT gacha_items_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.gacha_items DROP CONSTRAINT gacha_items_pkey;
       public            postgres    false    266            �           2606    94083    gacha_shop gacha_shop_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.gacha_shop
    ADD CONSTRAINT gacha_shop_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.gacha_shop DROP CONSTRAINT gacha_shop_pkey;
       public            postgres    false    262            �           2606    93945    gook gook_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.gook
    ADD CONSTRAINT gook_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.gook DROP CONSTRAINT gook_pkey;
       public            postgres    false    228            �           2606    93947 &   guild_adventures guild_adventures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.guild_adventures
    ADD CONSTRAINT guild_adventures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.guild_adventures DROP CONSTRAINT guild_adventures_pkey;
       public            postgres    false    230            �           2606    93949 $   guild_alliances guild_alliances_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.guild_alliances
    ADD CONSTRAINT guild_alliances_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.guild_alliances DROP CONSTRAINT guild_alliances_pkey;
       public            postgres    false    232            �           2606    93951 1   guild_applications guild_application_character_id 
   CONSTRAINT     ~   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_application_character_id UNIQUE (guild_id, character_id);
 [   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_application_character_id;
       public            postgres    false    234    234            �           2606    93953 *   guild_applications guild_applications_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_applications_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_applications_pkey;
       public            postgres    false    234            �           2606    93955 &   guild_characters guild_characters_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.guild_characters
    ADD CONSTRAINT guild_characters_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.guild_characters DROP CONSTRAINT guild_characters_pkey;
       public            postgres    false    236            �           2606    93957    guild_hunts guild_hunts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.guild_hunts
    ADD CONSTRAINT guild_hunts_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.guild_hunts DROP CONSTRAINT guild_hunts_pkey;
       public            postgres    false    238            �           2606    93959    guild_meals guild_meals_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.guild_meals
    ADD CONSTRAINT guild_meals_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.guild_meals DROP CONSTRAINT guild_meals_pkey;
       public            postgres    false    240            �           2606    93961    guild_posts guild_posts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.guild_posts
    ADD CONSTRAINT guild_posts_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.guild_posts DROP CONSTRAINT guild_posts_pkey;
       public            postgres    false    242            �           2606    93963    guilds guilds_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.guilds
    ADD CONSTRAINT guilds_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.guilds DROP CONSTRAINT guilds_pkey;
       public            postgres    false    244            �           2606    93973    mail mail_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.mail
    ADD CONSTRAINT mail_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.mail DROP CONSTRAINT mail_pkey;
       public            postgres    false    246            �           2606    93981     rengoku_score rengoku_score_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.rengoku_score
    ADD CONSTRAINT rengoku_score_pkey PRIMARY KEY (character_id);
 J   ALTER TABLE ONLY public.rengoku_score DROP CONSTRAINT rengoku_score_pkey;
       public            postgres    false    249            �           2606    93977    shop_items shop_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.shop_items
    ADD CONSTRAINT shop_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.shop_items DROP CONSTRAINT shop_items_pkey;
       public            postgres    false    248            �           2606    93987    stamps stamps_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.stamps
    ADD CONSTRAINT stamps_pkey PRIMARY KEY (character_id);
 <   ALTER TABLE ONLY public.stamps DROP CONSTRAINT stamps_pkey;
       public            postgres    false    252            �           2606    93991    user_binary user_binary_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_binary
    ADD CONSTRAINT user_binary_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_binary DROP CONSTRAINT user_binary_pkey;
       public            postgres    false    254            �           2606    93993    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    256            �           2606    93995    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    256            �           2606    93997    warehouse warehouse_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.warehouse
    ADD CONSTRAINT warehouse_pkey PRIMARY KEY (character_id);
 B   ALTER TABLE ONLY public.warehouse DROP CONSTRAINT warehouse_pkey;
       public            postgres    false    258            �           1259    93998    guild_application_type_index    INDEX     g   CREATE INDEX guild_application_type_index ON public.guild_applications USING btree (application_type);
 0   DROP INDEX public.guild_application_type_index;
       public            postgres    false    234            �           1259    93999    guild_character_unique_index    INDEX     h   CREATE UNIQUE INDEX guild_character_unique_index ON public.guild_characters USING btree (character_id);
 0   DROP INDEX public.guild_character_unique_index;
       public            postgres    false    236            �           1259    94179 '   mail_recipient_deleted_created_id_index    INDEX     �   CREATE INDEX mail_recipient_deleted_created_id_index ON public.mail USING btree (recipient_id, deleted, created_at DESC, id DESC);
 ;   DROP INDEX public.mail_recipient_deleted_created_id_index;
       public            postgres    false    246    246    246    246            �           2606    94001 "   characters characters_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_user_id_fkey;
       public          postgres    false    3533    256    214            �           2606    94006 3   guild_applications guild_applications_actor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_applications_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.characters(id);
 ]   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_applications_actor_id_fkey;
       public          postgres    false    234    3490    214            �           2606    94011 7   guild_applications guild_applications_character_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_applications_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.characters(id);
 a   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_applications_character_id_fkey;
       public          postgres    false    3490    234    214            �           2606    94016 3   guild_applications guild_applications_guild_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_applications
    ADD CONSTRAINT guild_applications_guild_id_fkey FOREIGN KEY (guild_id) REFERENCES public.guilds(id);
 ]   ALTER TABLE ONLY public.guild_applications DROP CONSTRAINT guild_applications_guild_id_fkey;
       public          postgres    false    3520    244    234            �           2606    94021 3   guild_characters guild_characters_character_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_characters
    ADD CONSTRAINT guild_characters_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.characters(id);
 ]   ALTER TABLE ONLY public.guild_characters DROP CONSTRAINT guild_characters_character_id_fkey;
       public          postgres    false    236    3490    214            �           2606    94026 /   guild_characters guild_characters_guild_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guild_characters
    ADD CONSTRAINT guild_characters_guild_id_fkey FOREIGN KEY (guild_id) REFERENCES public.guilds(id);
 Y   ALTER TABLE ONLY public.guild_characters DROP CONSTRAINT guild_characters_guild_id_fkey;
       public          postgres    false    3520    236    244            �           2606    94041    mail mail_recipient_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mail
    ADD CONSTRAINT mail_recipient_id_fkey FOREIGN KEY (recipient_id) REFERENCES public.characters(id);
 E   ALTER TABLE ONLY public.mail DROP CONSTRAINT mail_recipient_id_fkey;
       public          postgres    false    214    246    3490            �           2606    94046    mail mail_sender_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.mail
    ADD CONSTRAINT mail_sender_id_fkey FOREIGN KEY (sender_id) REFERENCES public.characters(id);
 B   ALTER TABLE ONLY public.mail DROP CONSTRAINT mail_sender_id_fkey;
       public          postgres    false    246    3490    214           