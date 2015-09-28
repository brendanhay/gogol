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
-- /See:/ 'userinfoplus' smart constructor.
data Userinfoplus = Userinfoplus
    { _uHd            :: !(Maybe Text)
    , _uEmail         :: !(Maybe Text)
    , _uLink          :: !(Maybe Text)
    , _uLocale        :: !(Maybe Text)
    , _uGivenName     :: !(Maybe Text)
    , _uFamilyName    :: !(Maybe Text)
    , _uPicture       :: !(Maybe Text)
    , _uGender        :: !(Maybe Text)
    , _uName          :: !(Maybe Text)
    , _uVerifiedEmail :: !Bool
    , _uId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Userinfoplus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uHd'
--
-- * 'uEmail'
--
-- * 'uLink'
--
-- * 'uLocale'
--
-- * 'uGivenName'
--
-- * 'uFamilyName'
--
-- * 'uPicture'
--
-- * 'uGender'
--
-- * 'uName'
--
-- * 'uVerifiedEmail'
--
-- * 'uId'
userinfoplus
    :: Userinfoplus
userinfoplus =
    Userinfoplus
    { _uHd = Nothing
    , _uEmail = Nothing
    , _uLink = Nothing
    , _uLocale = Nothing
    , _uGivenName = Nothing
    , _uFamilyName = Nothing
    , _uPicture = Nothing
    , _uGender = Nothing
    , _uName = Nothing
    , _uVerifiedEmail = True
    , _uId = Nothing
    }

-- | The hosted domain e.g. example.com if the user is Google apps user.
uHd :: Lens' Userinfoplus (Maybe Text)
uHd = lens _uHd (\ s a -> s{_uHd = a})

-- | The user\'s email address.
uEmail :: Lens' Userinfoplus (Maybe Text)
uEmail = lens _uEmail (\ s a -> s{_uEmail = a})

-- | URL of the profile page.
uLink :: Lens' Userinfoplus (Maybe Text)
uLink = lens _uLink (\ s a -> s{_uLink = a})

-- | The user\'s preferred locale.
uLocale :: Lens' Userinfoplus (Maybe Text)
uLocale = lens _uLocale (\ s a -> s{_uLocale = a})

-- | The user\'s first name.
uGivenName :: Lens' Userinfoplus (Maybe Text)
uGivenName
  = lens _uGivenName (\ s a -> s{_uGivenName = a})

-- | The user\'s last name.
uFamilyName :: Lens' Userinfoplus (Maybe Text)
uFamilyName
  = lens _uFamilyName (\ s a -> s{_uFamilyName = a})

-- | URL of the user\'s picture image.
uPicture :: Lens' Userinfoplus (Maybe Text)
uPicture = lens _uPicture (\ s a -> s{_uPicture = a})

-- | The user\'s gender.
uGender :: Lens' Userinfoplus (Maybe Text)
uGender = lens _uGender (\ s a -> s{_uGender = a})

-- | The user\'s full name.
uName :: Lens' Userinfoplus (Maybe Text)
uName = lens _uName (\ s a -> s{_uName = a})

-- | Boolean flag which is true if the email address is verified. Always
-- verified because we only return the user\'s primary email address.
uVerifiedEmail :: Lens' Userinfoplus Bool
uVerifiedEmail
  = lens _uVerifiedEmail
      (\ s a -> s{_uVerifiedEmail = a})

-- | The obfuscated ID of the user.
uId :: Lens' Userinfoplus (Maybe Text)
uId = lens _uId (\ s a -> s{_uId = a})

instance FromJSON Userinfoplus where
        parseJSON
          = withObject "Userinfoplus"
              (\ o ->
                 Userinfoplus <$>
                   (o .:? "hd") <*> (o .:? "email") <*> (o .:? "link")
                     <*> (o .:? "locale")
                     <*> (o .:? "given_name")
                     <*> (o .:? "family_name")
                     <*> (o .:? "picture")
                     <*> (o .:? "gender")
                     <*> (o .:? "name")
                     <*> (o .:? "verified_email" .!= True)
                     <*> (o .:? "id"))

instance ToJSON Userinfoplus where
        toJSON Userinfoplus{..}
          = object
              (catMaybes
                 [("hd" .=) <$> _uHd, ("email" .=) <$> _uEmail,
                  ("link" .=) <$> _uLink, ("locale" .=) <$> _uLocale,
                  ("given_name" .=) <$> _uGivenName,
                  ("family_name" .=) <$> _uFamilyName,
                  ("picture" .=) <$> _uPicture,
                  ("gender" .=) <$> _uGender, ("name" .=) <$> _uName,
                  Just ("verified_email" .= _uVerifiedEmail),
                  ("id" .=) <$> _uId])

--
-- /See:/ 'jwk' smart constructor.
newtype Jwk = Jwk
    { _jwkKeys :: Maybe [JwkItemKeys]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Jwk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jwkKeys'
jwk
    :: Jwk
jwk =
    Jwk
    { _jwkKeys = Nothing
    }

jwkKeys :: Lens' Jwk [JwkItemKeys]
jwkKeys
  = lens _jwkKeys (\ s a -> s{_jwkKeys = a}) . _Default
      . _Coerce

instance FromJSON Jwk where
        parseJSON
          = withObject "Jwk"
              (\ o -> Jwk <$> (o .:? "keys" .!= mempty))

instance ToJSON Jwk where
        toJSON Jwk{..}
          = object (catMaybes [("keys" .=) <$> _jwkKeys])

--
-- /See:/ 'jwkItemKeys' smart constructor.
data JwkItemKeys = JwkItemKeys
    { _jikAlg :: !Text
    , _jikUse :: !Text
    , _jikKid :: !(Maybe Text)
    , _jikN   :: !(Maybe Text)
    , _jikE   :: !(Maybe Text)
    , _jikKty :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JwkItemKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jikAlg'
--
-- * 'jikUse'
--
-- * 'jikKid'
--
-- * 'jikN'
--
-- * 'jikE'
--
-- * 'jikKty'
jwkItemKeys
    :: JwkItemKeys
jwkItemKeys =
    JwkItemKeys
    { _jikAlg = "RS256"
    , _jikUse = "sig"
    , _jikKid = Nothing
    , _jikN = Nothing
    , _jikE = Nothing
    , _jikKty = "RSA"
    }

jikAlg :: Lens' JwkItemKeys Text
jikAlg = lens _jikAlg (\ s a -> s{_jikAlg = a})

jikUse :: Lens' JwkItemKeys Text
jikUse = lens _jikUse (\ s a -> s{_jikUse = a})

jikKid :: Lens' JwkItemKeys (Maybe Text)
jikKid = lens _jikKid (\ s a -> s{_jikKid = a})

jikN :: Lens' JwkItemKeys (Maybe Text)
jikN = lens _jikN (\ s a -> s{_jikN = a})

jikE :: Lens' JwkItemKeys (Maybe Text)
jikE = lens _jikE (\ s a -> s{_jikE = a})

jikKty :: Lens' JwkItemKeys Text
jikKty = lens _jikKty (\ s a -> s{_jikKty = a})

instance FromJSON JwkItemKeys where
        parseJSON
          = withObject "JwkItemKeys"
              (\ o ->
                 JwkItemKeys <$>
                   (o .:? "alg" .!= "RS256") <*> (o .:? "use" .!= "sig")
                     <*> (o .:? "kid")
                     <*> (o .:? "n")
                     <*> (o .:? "e")
                     <*> (o .:? "kty" .!= "RSA"))

instance ToJSON JwkItemKeys where
        toJSON JwkItemKeys{..}
          = object
              (catMaybes
                 [Just ("alg" .= _jikAlg), Just ("use" .= _jikUse),
                  ("kid" .=) <$> _jikKid, ("n" .=) <$> _jikN,
                  ("e" .=) <$> _jikE, Just ("kty" .= _jikKty)])

--
-- /See:/ 'tokeninfo' smart constructor.
data Tokeninfo = Tokeninfo
    { _tAudience      :: !(Maybe Text)
    , _tEmail         :: !(Maybe Text)
    , _tExpiresIn     :: !(Maybe Int32)
    , _tAccessType    :: !(Maybe Text)
    , _tScope         :: !(Maybe Text)
    , _tVerifiedEmail :: !(Maybe Bool)
    , _tUserId        :: !(Maybe Text)
    , _tTokenHandle   :: !(Maybe Text)
    , _tIssuedTo      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tokeninfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tAudience'
--
-- * 'tEmail'
--
-- * 'tExpiresIn'
--
-- * 'tAccessType'
--
-- * 'tScope'
--
-- * 'tVerifiedEmail'
--
-- * 'tUserId'
--
-- * 'tTokenHandle'
--
-- * 'tIssuedTo'
tokeninfo
    :: Tokeninfo
tokeninfo =
    Tokeninfo
    { _tAudience = Nothing
    , _tEmail = Nothing
    , _tExpiresIn = Nothing
    , _tAccessType = Nothing
    , _tScope = Nothing
    , _tVerifiedEmail = Nothing
    , _tUserId = Nothing
    , _tTokenHandle = Nothing
    , _tIssuedTo = Nothing
    }

-- | Who is the intended audience for this token. In general the same as
-- issued_to.
tAudience :: Lens' Tokeninfo (Maybe Text)
tAudience
  = lens _tAudience (\ s a -> s{_tAudience = a})

-- | The email address of the user. Present only if the email scope is
-- present in the request.
tEmail :: Lens' Tokeninfo (Maybe Text)
tEmail = lens _tEmail (\ s a -> s{_tEmail = a})

-- | The expiry time of the token, as number of seconds left until expiry.
tExpiresIn :: Lens' Tokeninfo (Maybe Int32)
tExpiresIn
  = lens _tExpiresIn (\ s a -> s{_tExpiresIn = a})

-- | The access type granted with this token. It can be offline or online.
tAccessType :: Lens' Tokeninfo (Maybe Text)
tAccessType
  = lens _tAccessType (\ s a -> s{_tAccessType = a})

-- | The space separated list of scopes granted to this token.
tScope :: Lens' Tokeninfo (Maybe Text)
tScope = lens _tScope (\ s a -> s{_tScope = a})

-- | Boolean flag which is true if the email address is verified. Present
-- only if the email scope is present in the request.
tVerifiedEmail :: Lens' Tokeninfo (Maybe Bool)
tVerifiedEmail
  = lens _tVerifiedEmail
      (\ s a -> s{_tVerifiedEmail = a})

-- | The obfuscated user id.
tUserId :: Lens' Tokeninfo (Maybe Text)
tUserId = lens _tUserId (\ s a -> s{_tUserId = a})

-- | The token handle associated with this token.
tTokenHandle :: Lens' Tokeninfo (Maybe Text)
tTokenHandle
  = lens _tTokenHandle (\ s a -> s{_tTokenHandle = a})

-- | To whom was the token issued to. In general the same as audience.
tIssuedTo :: Lens' Tokeninfo (Maybe Text)
tIssuedTo
  = lens _tIssuedTo (\ s a -> s{_tIssuedTo = a})

instance FromJSON Tokeninfo where
        parseJSON
          = withObject "Tokeninfo"
              (\ o ->
                 Tokeninfo <$>
                   (o .:? "audience") <*> (o .:? "email") <*>
                     (o .:? "expires_in")
                     <*> (o .:? "access_type")
                     <*> (o .:? "scope")
                     <*> (o .:? "verified_email")
                     <*> (o .:? "user_id")
                     <*> (o .:? "token_handle")
                     <*> (o .:? "issued_to"))

instance ToJSON Tokeninfo where
        toJSON Tokeninfo{..}
          = object
              (catMaybes
                 [("audience" .=) <$> _tAudience,
                  ("email" .=) <$> _tEmail,
                  ("expires_in" .=) <$> _tExpiresIn,
                  ("access_type" .=) <$> _tAccessType,
                  ("scope" .=) <$> _tScope,
                  ("verified_email" .=) <$> _tVerifiedEmail,
                  ("user_id" .=) <$> _tUserId,
                  ("token_handle" .=) <$> _tTokenHandle,
                  ("issued_to" .=) <$> _tIssuedTo])
