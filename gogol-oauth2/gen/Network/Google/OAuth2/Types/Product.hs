{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.OAuth2.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.OAuth2.Types.Product where

import           Network.Google.OAuth2.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'tokenInfo' smart constructor.
data TokenInfo = TokenInfo
    { _tiAudience      :: !(Maybe Text)
    , _tiEmail         :: !(Maybe Text)
    , _tiExpiresIn     :: !(Maybe Int32)
    , _tiAccessType    :: !(Maybe Text)
    , _tiScope         :: !(Maybe Text)
    , _tiVerifiedEmail :: !(Maybe Bool)
    , _tiUserId        :: !(Maybe Text)
    , _tiTokenHandle   :: !(Maybe Text)
    , _tiIssuedTo      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokenInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiAudience'
--
-- * 'tiEmail'
--
-- * 'tiExpiresIn'
--
-- * 'tiAccessType'
--
-- * 'tiScope'
--
-- * 'tiVerifiedEmail'
--
-- * 'tiUserId'
--
-- * 'tiTokenHandle'
--
-- * 'tiIssuedTo'
tokenInfo
    :: TokenInfo
tokenInfo =
    TokenInfo
    { _tiAudience = Nothing
    , _tiEmail = Nothing
    , _tiExpiresIn = Nothing
    , _tiAccessType = Nothing
    , _tiScope = Nothing
    , _tiVerifiedEmail = Nothing
    , _tiUserId = Nothing
    , _tiTokenHandle = Nothing
    , _tiIssuedTo = Nothing
    }

-- | Who is the intended audience for this token. In general the same as
-- issued_to.
tiAudience :: Lens' TokenInfo (Maybe Text)
tiAudience
  = lens _tiAudience (\ s a -> s{_tiAudience = a})

-- | The email address of the user. Present only if the email scope is
-- present in the request.
tiEmail :: Lens' TokenInfo (Maybe Text)
tiEmail = lens _tiEmail (\ s a -> s{_tiEmail = a})

-- | The expiry time of the token, as number of seconds left until expiry.
tiExpiresIn :: Lens' TokenInfo (Maybe Int32)
tiExpiresIn
  = lens _tiExpiresIn (\ s a -> s{_tiExpiresIn = a})

-- | The access type granted with this token. It can be offline or online.
tiAccessType :: Lens' TokenInfo (Maybe Text)
tiAccessType
  = lens _tiAccessType (\ s a -> s{_tiAccessType = a})

-- | The space separated list of scopes granted to this token.
tiScope :: Lens' TokenInfo (Maybe Text)
tiScope = lens _tiScope (\ s a -> s{_tiScope = a})

-- | Boolean flag which is true if the email address is verified. Present
-- only if the email scope is present in the request.
tiVerifiedEmail :: Lens' TokenInfo (Maybe Bool)
tiVerifiedEmail
  = lens _tiVerifiedEmail
      (\ s a -> s{_tiVerifiedEmail = a})

-- | The obfuscated user id.
tiUserId :: Lens' TokenInfo (Maybe Text)
tiUserId = lens _tiUserId (\ s a -> s{_tiUserId = a})

-- | The token handle associated with this token.
tiTokenHandle :: Lens' TokenInfo (Maybe Text)
tiTokenHandle
  = lens _tiTokenHandle
      (\ s a -> s{_tiTokenHandle = a})

-- | To whom was the token issued to. In general the same as audience.
tiIssuedTo :: Lens' TokenInfo (Maybe Text)
tiIssuedTo
  = lens _tiIssuedTo (\ s a -> s{_tiIssuedTo = a})

instance FromJSON TokenInfo where
        parseJSON
          = withObject "TokenInfo"
              (\ o ->
                 TokenInfo <$>
                   (o .:? "audience") <*> (o .:? "email") <*>
                     (o .:? "expires_in")
                     <*> (o .:? "access_type")
                     <*> (o .:? "scope")
                     <*> (o .:? "verified_email")
                     <*> (o .:? "user_id")
                     <*> (o .:? "token_handle")
                     <*> (o .:? "issued_to"))

instance ToJSON TokenInfo where
        toJSON TokenInfo{..}
          = object
              (catMaybes
                 [("audience" .=) <$> _tiAudience,
                  ("email" .=) <$> _tiEmail,
                  ("expires_in" .=) <$> _tiExpiresIn,
                  ("access_type" .=) <$> _tiAccessType,
                  ("scope" .=) <$> _tiScope,
                  ("verified_email" .=) <$> _tiVerifiedEmail,
                  ("user_id" .=) <$> _tiUserId,
                  ("token_handle" .=) <$> _tiTokenHandle,
                  ("issued_to" .=) <$> _tiIssuedTo])

--
-- /See:/ 'jwk' smart constructor.
newtype JWK = JWK
    { _jKeys :: Maybe [KeysItem]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JWK' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jKeys'
jwk
    :: JWK
jwk =
    JWK
    { _jKeys = Nothing
    }

jKeys :: Lens' JWK [KeysItem]
jKeys
  = lens _jKeys (\ s a -> s{_jKeys = a}) . _Default .
      _Coerce

instance FromJSON JWK where
        parseJSON
          = withObject "JWK"
              (\ o -> JWK <$> (o .:? "keys" .!= mempty))

instance ToJSON JWK where
        toJSON JWK{..}
          = object (catMaybes [("keys" .=) <$> _jKeys])

--
-- /See:/ 'keysItem' smart constructor.
data KeysItem = KeysItem
    { _kiAlg :: !Text
    , _kiUse :: !Text
    , _kiKid :: !(Maybe Text)
    , _kiN   :: !(Maybe Text)
    , _kiE   :: !(Maybe Text)
    , _kiKty :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'KeysItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kiAlg'
--
-- * 'kiUse'
--
-- * 'kiKid'
--
-- * 'kiN'
--
-- * 'kiE'
--
-- * 'kiKty'
keysItem
    :: KeysItem
keysItem =
    KeysItem
    { _kiAlg = "RS256"
    , _kiUse = "sig"
    , _kiKid = Nothing
    , _kiN = Nothing
    , _kiE = Nothing
    , _kiKty = "RSA"
    }

kiAlg :: Lens' KeysItem Text
kiAlg = lens _kiAlg (\ s a -> s{_kiAlg = a})

kiUse :: Lens' KeysItem Text
kiUse = lens _kiUse (\ s a -> s{_kiUse = a})

kiKid :: Lens' KeysItem (Maybe Text)
kiKid = lens _kiKid (\ s a -> s{_kiKid = a})

kiN :: Lens' KeysItem (Maybe Text)
kiN = lens _kiN (\ s a -> s{_kiN = a})

kiE :: Lens' KeysItem (Maybe Text)
kiE = lens _kiE (\ s a -> s{_kiE = a})

kiKty :: Lens' KeysItem Text
kiKty = lens _kiKty (\ s a -> s{_kiKty = a})

instance FromJSON KeysItem where
        parseJSON
          = withObject "KeysItem"
              (\ o ->
                 KeysItem <$>
                   (o .:? "alg" .!= "RS256") <*> (o .:? "use" .!= "sig")
                     <*> (o .:? "kid")
                     <*> (o .:? "n")
                     <*> (o .:? "e")
                     <*> (o .:? "kty" .!= "RSA"))

instance ToJSON KeysItem where
        toJSON KeysItem{..}
          = object
              (catMaybes
                 [Just ("alg" .= _kiAlg), Just ("use" .= _kiUse),
                  ("kid" .=) <$> _kiKid, ("n" .=) <$> _kiN,
                  ("e" .=) <$> _kiE, Just ("kty" .= _kiKty)])

--
-- /See:/ 'userInfoplus' smart constructor.
data UserInfoplus = UserInfoplus
    { _uiHd            :: !(Maybe Text)
    , _uiEmail         :: !(Maybe Text)
    , _uiLink          :: !(Maybe Text)
    , _uiLocale        :: !(Maybe Text)
    , _uiGivenName     :: !(Maybe Text)
    , _uiFamilyName    :: !(Maybe Text)
    , _uiPicture       :: !(Maybe Text)
    , _uiGender        :: !(Maybe Text)
    , _uiName          :: !(Maybe Text)
    , _uiVerifiedEmail :: !Bool
    , _uiId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfoplus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiHd'
--
-- * 'uiEmail'
--
-- * 'uiLink'
--
-- * 'uiLocale'
--
-- * 'uiGivenName'
--
-- * 'uiFamilyName'
--
-- * 'uiPicture'
--
-- * 'uiGender'
--
-- * 'uiName'
--
-- * 'uiVerifiedEmail'
--
-- * 'uiId'
userInfoplus
    :: UserInfoplus
userInfoplus =
    UserInfoplus
    { _uiHd = Nothing
    , _uiEmail = Nothing
    , _uiLink = Nothing
    , _uiLocale = Nothing
    , _uiGivenName = Nothing
    , _uiFamilyName = Nothing
    , _uiPicture = Nothing
    , _uiGender = Nothing
    , _uiName = Nothing
    , _uiVerifiedEmail = True
    , _uiId = Nothing
    }

-- | The hosted domain e.g. example.com if the user is Google apps user.
uiHd :: Lens' UserInfoplus (Maybe Text)
uiHd = lens _uiHd (\ s a -> s{_uiHd = a})

-- | The user\'s email address.
uiEmail :: Lens' UserInfoplus (Maybe Text)
uiEmail = lens _uiEmail (\ s a -> s{_uiEmail = a})

-- | URL of the profile page.
uiLink :: Lens' UserInfoplus (Maybe Text)
uiLink = lens _uiLink (\ s a -> s{_uiLink = a})

-- | The user\'s preferred locale.
uiLocale :: Lens' UserInfoplus (Maybe Text)
uiLocale = lens _uiLocale (\ s a -> s{_uiLocale = a})

-- | The user\'s first name.
uiGivenName :: Lens' UserInfoplus (Maybe Text)
uiGivenName
  = lens _uiGivenName (\ s a -> s{_uiGivenName = a})

-- | The user\'s last name.
uiFamilyName :: Lens' UserInfoplus (Maybe Text)
uiFamilyName
  = lens _uiFamilyName (\ s a -> s{_uiFamilyName = a})

-- | URL of the user\'s picture image.
uiPicture :: Lens' UserInfoplus (Maybe Text)
uiPicture
  = lens _uiPicture (\ s a -> s{_uiPicture = a})

-- | The user\'s gender.
uiGender :: Lens' UserInfoplus (Maybe Text)
uiGender = lens _uiGender (\ s a -> s{_uiGender = a})

-- | The user\'s full name.
uiName :: Lens' UserInfoplus (Maybe Text)
uiName = lens _uiName (\ s a -> s{_uiName = a})

-- | Boolean flag which is true if the email address is verified. Always
-- verified because we only return the user\'s primary email address.
uiVerifiedEmail :: Lens' UserInfoplus Bool
uiVerifiedEmail
  = lens _uiVerifiedEmail
      (\ s a -> s{_uiVerifiedEmail = a})

-- | The obfuscated ID of the user.
uiId :: Lens' UserInfoplus (Maybe Text)
uiId = lens _uiId (\ s a -> s{_uiId = a})

instance FromJSON UserInfoplus where
        parseJSON
          = withObject "UserInfoplus"
              (\ o ->
                 UserInfoplus <$>
                   (o .:? "hd") <*> (o .:? "email") <*> (o .:? "link")
                     <*> (o .:? "locale")
                     <*> (o .:? "given_name")
                     <*> (o .:? "family_name")
                     <*> (o .:? "picture")
                     <*> (o .:? "gender")
                     <*> (o .:? "name")
                     <*> (o .:? "verified_email" .!= True)
                     <*> (o .:? "id"))

instance ToJSON UserInfoplus where
        toJSON UserInfoplus{..}
          = object
              (catMaybes
                 [("hd" .=) <$> _uiHd, ("email" .=) <$> _uiEmail,
                  ("link" .=) <$> _uiLink, ("locale" .=) <$> _uiLocale,
                  ("given_name" .=) <$> _uiGivenName,
                  ("family_name" .=) <$> _uiFamilyName,
                  ("picture" .=) <$> _uiPicture,
                  ("gender" .=) <$> _uiGender, ("name" .=) <$> _uiName,
                  Just ("verified_email" .= _uiVerifiedEmail),
                  ("id" .=) <$> _uiId])
