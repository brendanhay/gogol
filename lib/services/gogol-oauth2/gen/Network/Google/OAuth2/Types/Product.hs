{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.OAuth2.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.OAuth2.Types.Product where

import Network.Google.OAuth2.Types.Sum
import Network.Google.Prelude

--
-- /See:/ 'userInfo' smart constructor.
data UserInfo =
  UserInfo'
    { _uiHd :: !(Maybe Text)
    , _uiEmail :: !(Maybe Text)
    , _uiLink :: !(Maybe Text)
    , _uiLocale :: !(Maybe Text)
    , _uiGivenName :: !(Maybe Text)
    , _uiFamilyName :: !(Maybe Text)
    , _uiPicture :: !(Maybe Text)
    , _uiGender :: !(Maybe Text)
    , _uiName :: !(Maybe Text)
    , _uiVerifiedEmail :: !Bool
    , _uiId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
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
userInfo
    :: UserInfo
userInfo =
  UserInfo'
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
uiHd :: Lens' UserInfo (Maybe Text)
uiHd = lens _uiHd (\ s a -> s{_uiHd = a})

-- | The user\'s email address.
uiEmail :: Lens' UserInfo (Maybe Text)
uiEmail = lens _uiEmail (\ s a -> s{_uiEmail = a})

-- | URL of the profile page.
uiLink :: Lens' UserInfo (Maybe Text)
uiLink = lens _uiLink (\ s a -> s{_uiLink = a})

-- | The user\'s preferred locale.
uiLocale :: Lens' UserInfo (Maybe Text)
uiLocale = lens _uiLocale (\ s a -> s{_uiLocale = a})

-- | The user\'s first name.
uiGivenName :: Lens' UserInfo (Maybe Text)
uiGivenName
  = lens _uiGivenName (\ s a -> s{_uiGivenName = a})

-- | The user\'s last name.
uiFamilyName :: Lens' UserInfo (Maybe Text)
uiFamilyName
  = lens _uiFamilyName (\ s a -> s{_uiFamilyName = a})

-- | URL of the user\'s picture image.
uiPicture :: Lens' UserInfo (Maybe Text)
uiPicture
  = lens _uiPicture (\ s a -> s{_uiPicture = a})

-- | The user\'s gender.
uiGender :: Lens' UserInfo (Maybe Text)
uiGender = lens _uiGender (\ s a -> s{_uiGender = a})

-- | The user\'s full name.
uiName :: Lens' UserInfo (Maybe Text)
uiName = lens _uiName (\ s a -> s{_uiName = a})

-- | Boolean flag which is true if the email address is verified. Always
-- verified because we only return the user\'s primary email address.
uiVerifiedEmail :: Lens' UserInfo Bool
uiVerifiedEmail
  = lens _uiVerifiedEmail
      (\ s a -> s{_uiVerifiedEmail = a})

-- | The obfuscated ID of the user.
uiId :: Lens' UserInfo (Maybe Text)
uiId = lens _uiId (\ s a -> s{_uiId = a})

instance FromJSON UserInfo where
        parseJSON
          = withObject "UserInfo"
              (\ o ->
                 UserInfo' <$>
                   (o .:? "hd") <*> (o .:? "email") <*> (o .:? "link")
                     <*> (o .:? "locale")
                     <*> (o .:? "given_name")
                     <*> (o .:? "family_name")
                     <*> (o .:? "picture")
                     <*> (o .:? "gender")
                     <*> (o .:? "name")
                     <*> (o .:? "verified_email" .!= True)
                     <*> (o .:? "id"))

instance ToJSON UserInfo where
        toJSON UserInfo'{..}
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

--
-- /See:/ 'tokenInfo' smart constructor.
data TokenInfo =
  TokenInfo'
    { _tiAudience :: !(Maybe Text)
    , _tiEmail :: !(Maybe Text)
    , _tiExpiresIn :: !(Maybe (Textual Int32))
    , _tiScope :: !(Maybe Text)
    , _tiVerifiedEmail :: !(Maybe Bool)
    , _tiUserId :: !(Maybe Text)
    , _tiIssuedTo :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'tiScope'
--
-- * 'tiVerifiedEmail'
--
-- * 'tiUserId'
--
-- * 'tiIssuedTo'
tokenInfo
    :: TokenInfo
tokenInfo =
  TokenInfo'
    { _tiAudience = Nothing
    , _tiEmail = Nothing
    , _tiExpiresIn = Nothing
    , _tiScope = Nothing
    , _tiVerifiedEmail = Nothing
    , _tiUserId = Nothing
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
  = lens _tiExpiresIn (\ s a -> s{_tiExpiresIn = a}) .
      mapping _Coerce

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

-- | To whom was the token issued to. In general the same as audience.
tiIssuedTo :: Lens' TokenInfo (Maybe Text)
tiIssuedTo
  = lens _tiIssuedTo (\ s a -> s{_tiIssuedTo = a})

instance FromJSON TokenInfo where
        parseJSON
          = withObject "TokenInfo"
              (\ o ->
                 TokenInfo' <$>
                   (o .:? "audience") <*> (o .:? "email") <*>
                     (o .:? "expires_in")
                     <*> (o .:? "scope")
                     <*> (o .:? "verified_email")
                     <*> (o .:? "user_id")
                     <*> (o .:? "issued_to"))

instance ToJSON TokenInfo where
        toJSON TokenInfo'{..}
          = object
              (catMaybes
                 [("audience" .=) <$> _tiAudience,
                  ("email" .=) <$> _tiEmail,
                  ("expires_in" .=) <$> _tiExpiresIn,
                  ("scope" .=) <$> _tiScope,
                  ("verified_email" .=) <$> _tiVerifiedEmail,
                  ("user_id" .=) <$> _tiUserId,
                  ("issued_to" .=) <$> _tiIssuedTo])
