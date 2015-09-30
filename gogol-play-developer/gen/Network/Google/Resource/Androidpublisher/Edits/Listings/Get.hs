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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Listings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches information about a localized store listing.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsListingsGet@.
module Network.Google.Resource.Androidpublisher.Edits.Listings.Get
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
    , elgUserIp
    , elgKey
    , elgLanguage
    , elgOauthToken
    , elgEditId
    , elgFields
    , elgAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsListingsGet@ which the
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Listing

-- | Fetches information about a localized store listing.
--
-- /See:/ 'editsListingsGet'' smart constructor.
data EditsListingsGet' = EditsListingsGet'
    { _elgQuotaUser   :: !(Maybe Text)
    , _elgPrettyPrint :: !Bool
    , _elgPackageName :: !Text
    , _elgUserIp      :: !(Maybe Text)
    , _elgKey         :: !(Maybe Text)
    , _elgLanguage    :: !Text
    , _elgOauthToken  :: !(Maybe Text)
    , _elgEditId      :: !Text
    , _elgFields      :: !(Maybe Text)
    , _elgAlt         :: !Alt
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
-- * 'elgUserIp'
--
-- * 'elgKey'
--
-- * 'elgLanguage'
--
-- * 'elgOauthToken'
--
-- * 'elgEditId'
--
-- * 'elgFields'
--
-- * 'elgAlt'
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
    , _elgUserIp = Nothing
    , _elgKey = Nothing
    , _elgLanguage = pElgLanguage_
    , _elgOauthToken = Nothing
    , _elgEditId = pElgEditId_
    , _elgFields = Nothing
    , _elgAlt = JSON
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
elgUserIp :: Lens' EditsListingsGet' (Maybe Text)
elgUserIp
  = lens _elgUserIp (\ s a -> s{_elgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elgKey :: Lens' EditsListingsGet' (Maybe Text)
elgKey = lens _elgKey (\ s a -> s{_elgKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
elgLanguage :: Lens' EditsListingsGet' Text
elgLanguage
  = lens _elgLanguage (\ s a -> s{_elgLanguage = a})

-- | OAuth 2.0 token for the current user.
elgOauthToken :: Lens' EditsListingsGet' (Maybe Text)
elgOauthToken
  = lens _elgOauthToken
      (\ s a -> s{_elgOauthToken = a})

-- | Unique identifier for this edit.
elgEditId :: Lens' EditsListingsGet' Text
elgEditId
  = lens _elgEditId (\ s a -> s{_elgEditId = a})

-- | Selector specifying which fields to include in a partial response.
elgFields :: Lens' EditsListingsGet' (Maybe Text)
elgFields
  = lens _elgFields (\ s a -> s{_elgFields = a})

-- | Data format for the response.
elgAlt :: Lens' EditsListingsGet' Alt
elgAlt = lens _elgAlt (\ s a -> s{_elgAlt = a})

instance GoogleRequest EditsListingsGet' where
        type Rs EditsListingsGet' = Listing
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsListingsGet'{..}
          = go _elgQuotaUser (Just _elgPrettyPrint)
              _elgPackageName
              _elgUserIp
              _elgKey
              _elgLanguage
              _elgOauthToken
              _elgEditId
              _elgFields
              (Just _elgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsGetResource)
                      r
                      u
