{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches information about a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsListingsGet@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Get
    (
    -- * REST Resource
      EditsListingsGetResource

    -- * Creating a Request
    , editsListingsGet'
    , EditsListingsGet'

    -- * Request Lenses
    , elgQuotaUser
    , elgPrettyPrint
    , elgPackageName
    , elgUserIP
    , elgKey
    , elgLanguage
    , elgOAuthToken
    , elgEditId
    , elgFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsListingsGet@ which the
-- 'EditsListingsGet'' request conforms to.
type EditsListingsGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Listing

-- | Fetches information about a localized store listing.
--
-- /See:/ 'editsListingsGet'' smart constructor.
data EditsListingsGet' = EditsListingsGet'
    { _elgQuotaUser   :: !(Maybe Text)
    , _elgPrettyPrint :: !Bool
    , _elgPackageName :: !Text
    , _elgUserIP      :: !(Maybe Text)
    , _elgKey         :: !(Maybe Key)
    , _elgLanguage    :: !Text
    , _elgOAuthToken  :: !(Maybe OAuthToken)
    , _elgEditId      :: !Text
    , _elgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elgQuotaUser'
--
-- * 'elgPrettyPrint'
--
-- * 'elgPackageName'
--
-- * 'elgUserIP'
--
-- * 'elgKey'
--
-- * 'elgLanguage'
--
-- * 'elgOAuthToken'
--
-- * 'elgEditId'
--
-- * 'elgFields'
editsListingsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsGet'
editsListingsGet' pElgPackageName_ pElgLanguage_ pElgEditId_ =
    EditsListingsGet'
    { _elgQuotaUser = Nothing
    , _elgPrettyPrint = True
    , _elgPackageName = pElgPackageName_
    , _elgUserIP = Nothing
    , _elgKey = Nothing
    , _elgLanguage = pElgLanguage_
    , _elgOAuthToken = Nothing
    , _elgEditId = pElgEditId_
    , _elgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elgQuotaUser :: Lens' EditsListingsGet' (Maybe Text)
elgQuotaUser
  = lens _elgQuotaUser (\ s a -> s{_elgQuotaUser = a})

-- | Returns response with indentations and line breaks.
elgPrettyPrint :: Lens' EditsListingsGet' Bool
elgPrettyPrint
  = lens _elgPrettyPrint
      (\ s a -> s{_elgPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
elgPackageName :: Lens' EditsListingsGet' Text
elgPackageName
  = lens _elgPackageName
      (\ s a -> s{_elgPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elgUserIP :: Lens' EditsListingsGet' (Maybe Text)
elgUserIP
  = lens _elgUserIP (\ s a -> s{_elgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elgKey :: Lens' EditsListingsGet' (Maybe Key)
elgKey = lens _elgKey (\ s a -> s{_elgKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
elgLanguage :: Lens' EditsListingsGet' Text
elgLanguage
  = lens _elgLanguage (\ s a -> s{_elgLanguage = a})

-- | OAuth 2.0 token for the current user.
elgOAuthToken :: Lens' EditsListingsGet' (Maybe OAuthToken)
elgOAuthToken
  = lens _elgOAuthToken
      (\ s a -> s{_elgOAuthToken = a})

-- | Unique identifier for this edit.
elgEditId :: Lens' EditsListingsGet' Text
elgEditId
  = lens _elgEditId (\ s a -> s{_elgEditId = a})

-- | Selector specifying which fields to include in a partial response.
elgFields :: Lens' EditsListingsGet' (Maybe Text)
elgFields
  = lens _elgFields (\ s a -> s{_elgFields = a})

instance GoogleAuth EditsListingsGet' where
        authKey = elgKey . _Just
        authToken = elgOAuthToken . _Just

instance GoogleRequest EditsListingsGet' where
        type Rs EditsListingsGet' = Listing
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsListingsGet'{..}
          = go _elgQuotaUser (Just _elgPrettyPrint)
              _elgPackageName
              _elgUserIP
              _elgKey
              _elgLanguage
              _elgOAuthToken
              _elgEditId
              _elgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsGetResource)
                      r
                      u
