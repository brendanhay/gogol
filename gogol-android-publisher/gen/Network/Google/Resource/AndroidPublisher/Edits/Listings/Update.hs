{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates or updates a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsListingsUpdate@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Update
    (
    -- * REST Resource
      EditsListingsUpdateResource

    -- * Creating a Request
    , editsListingsUpdate'
    , EditsListingsUpdate'

    -- * Request Lenses
    , eluQuotaUser
    , eluPrettyPrint
    , eluPackageName
    , eluUserIP
    , eluPayload
    , eluKey
    , eluLanguage
    , eluOAuthToken
    , eluEditId
    , eluFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsListingsUpdate@ which the
-- 'EditsListingsUpdate'' request conforms to.
type EditsListingsUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Listing :> Put '[JSON] Listing

-- | Creates or updates a localized store listing.
--
-- /See:/ 'editsListingsUpdate'' smart constructor.
data EditsListingsUpdate' = EditsListingsUpdate'
    { _eluQuotaUser   :: !(Maybe Text)
    , _eluPrettyPrint :: !Bool
    , _eluPackageName :: !Text
    , _eluUserIP      :: !(Maybe Text)
    , _eluPayload     :: !Listing
    , _eluKey         :: !(Maybe AuthKey)
    , _eluLanguage    :: !Text
    , _eluOAuthToken  :: !(Maybe OAuthToken)
    , _eluEditId      :: !Text
    , _eluFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eluQuotaUser'
--
-- * 'eluPrettyPrint'
--
-- * 'eluPackageName'
--
-- * 'eluUserIP'
--
-- * 'eluPayload'
--
-- * 'eluKey'
--
-- * 'eluLanguage'
--
-- * 'eluOAuthToken'
--
-- * 'eluEditId'
--
-- * 'eluFields'
editsListingsUpdate'
    :: Text -- ^ 'packageName'
    -> Listing -- ^ 'payload'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsUpdate'
editsListingsUpdate' pEluPackageName_ pEluPayload_ pEluLanguage_ pEluEditId_ =
    EditsListingsUpdate'
    { _eluQuotaUser = Nothing
    , _eluPrettyPrint = True
    , _eluPackageName = pEluPackageName_
    , _eluUserIP = Nothing
    , _eluPayload = pEluPayload_
    , _eluKey = Nothing
    , _eluLanguage = pEluLanguage_
    , _eluOAuthToken = Nothing
    , _eluEditId = pEluEditId_
    , _eluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eluQuotaUser :: Lens' EditsListingsUpdate' (Maybe Text)
eluQuotaUser
  = lens _eluQuotaUser (\ s a -> s{_eluQuotaUser = a})

-- | Returns response with indentations and line breaks.
eluPrettyPrint :: Lens' EditsListingsUpdate' Bool
eluPrettyPrint
  = lens _eluPrettyPrint
      (\ s a -> s{_eluPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eluPackageName :: Lens' EditsListingsUpdate' Text
eluPackageName
  = lens _eluPackageName
      (\ s a -> s{_eluPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eluUserIP :: Lens' EditsListingsUpdate' (Maybe Text)
eluUserIP
  = lens _eluUserIP (\ s a -> s{_eluUserIP = a})

-- | Multipart request metadata.
eluPayload :: Lens' EditsListingsUpdate' Listing
eluPayload
  = lens _eluPayload (\ s a -> s{_eluPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eluKey :: Lens' EditsListingsUpdate' (Maybe AuthKey)
eluKey = lens _eluKey (\ s a -> s{_eluKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
eluLanguage :: Lens' EditsListingsUpdate' Text
eluLanguage
  = lens _eluLanguage (\ s a -> s{_eluLanguage = a})

-- | OAuth 2.0 token for the current user.
eluOAuthToken :: Lens' EditsListingsUpdate' (Maybe OAuthToken)
eluOAuthToken
  = lens _eluOAuthToken
      (\ s a -> s{_eluOAuthToken = a})

-- | Unique identifier for this edit.
eluEditId :: Lens' EditsListingsUpdate' Text
eluEditId
  = lens _eluEditId (\ s a -> s{_eluEditId = a})

-- | Selector specifying which fields to include in a partial response.
eluFields :: Lens' EditsListingsUpdate' (Maybe Text)
eluFields
  = lens _eluFields (\ s a -> s{_eluFields = a})

instance GoogleAuth EditsListingsUpdate' where
        authKey = eluKey . _Just
        authToken = eluOAuthToken . _Just

instance GoogleRequest EditsListingsUpdate' where
        type Rs EditsListingsUpdate' = Listing
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsListingsUpdate'{..}
          = go _eluPackageName _eluEditId _eluLanguage
              _eluQuotaUser
              (Just _eluPrettyPrint)
              _eluUserIP
              _eluFields
              _eluKey
              _eluOAuthToken
              (Just AltJSON)
              _eluPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsUpdateResource)
                      r
                      u
