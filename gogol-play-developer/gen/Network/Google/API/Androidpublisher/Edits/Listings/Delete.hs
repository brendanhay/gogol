{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Listings.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified localized store listing from an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.listings.delete@.
module Network.Google.API.Androidpublisher.Edits.Listings.Delete
    (
    -- * REST Resource
      EditsListingsDeleteAPI

    -- * Creating a Request
    , editsListingsDelete'
    , EditsListingsDelete'

    -- * Request Lenses
    , eldQuotaUser
    , eldPrettyPrint
    , eldPackageName
    , eldUserIp
    , eldKey
    , eldLanguage
    , eldOauthToken
    , eldEditId
    , eldFields
    , eldAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.listings.delete which the
-- 'EditsListingsDelete'' request conforms to.
type EditsListingsDeleteAPI =
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
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the specified localized store listing from an edit.
--
-- /See:/ 'editsListingsDelete'' smart constructor.
data EditsListingsDelete' = EditsListingsDelete'
    { _eldQuotaUser   :: !(Maybe Text)
    , _eldPrettyPrint :: !Bool
    , _eldPackageName :: !Text
    , _eldUserIp      :: !(Maybe Text)
    , _eldKey         :: !(Maybe Text)
    , _eldLanguage    :: !Text
    , _eldOauthToken  :: !(Maybe Text)
    , _eldEditId      :: !Text
    , _eldFields      :: !(Maybe Text)
    , _eldAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldQuotaUser'
--
-- * 'eldPrettyPrint'
--
-- * 'eldPackageName'
--
-- * 'eldUserIp'
--
-- * 'eldKey'
--
-- * 'eldLanguage'
--
-- * 'eldOauthToken'
--
-- * 'eldEditId'
--
-- * 'eldFields'
--
-- * 'eldAlt'
editsListingsDelete'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsListingsDelete'
editsListingsDelete' pEldPackageName_ pEldLanguage_ pEldEditId_ =
    EditsListingsDelete'
    { _eldQuotaUser = Nothing
    , _eldPrettyPrint = True
    , _eldPackageName = pEldPackageName_
    , _eldUserIp = Nothing
    , _eldKey = Nothing
    , _eldLanguage = pEldLanguage_
    , _eldOauthToken = Nothing
    , _eldEditId = pEldEditId_
    , _eldFields = Nothing
    , _eldAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eldQuotaUser :: Lens' EditsListingsDelete' (Maybe Text)
eldQuotaUser
  = lens _eldQuotaUser (\ s a -> s{_eldQuotaUser = a})

-- | Returns response with indentations and line breaks.
eldPrettyPrint :: Lens' EditsListingsDelete' Bool
eldPrettyPrint
  = lens _eldPrettyPrint
      (\ s a -> s{_eldPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eldPackageName :: Lens' EditsListingsDelete' Text
eldPackageName
  = lens _eldPackageName
      (\ s a -> s{_eldPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eldUserIp :: Lens' EditsListingsDelete' (Maybe Text)
eldUserIp
  = lens _eldUserIp (\ s a -> s{_eldUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eldKey :: Lens' EditsListingsDelete' (Maybe Text)
eldKey = lens _eldKey (\ s a -> s{_eldKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing to
-- read or modify. For example, to select Austrian German, pass \"de-AT\".
eldLanguage :: Lens' EditsListingsDelete' Text
eldLanguage
  = lens _eldLanguage (\ s a -> s{_eldLanguage = a})

-- | OAuth 2.0 token for the current user.
eldOauthToken :: Lens' EditsListingsDelete' (Maybe Text)
eldOauthToken
  = lens _eldOauthToken
      (\ s a -> s{_eldOauthToken = a})

-- | Unique identifier for this edit.
eldEditId :: Lens' EditsListingsDelete' Text
eldEditId
  = lens _eldEditId (\ s a -> s{_eldEditId = a})

-- | Selector specifying which fields to include in a partial response.
eldFields :: Lens' EditsListingsDelete' (Maybe Text)
eldFields
  = lens _eldFields (\ s a -> s{_eldFields = a})

-- | Data format for the response.
eldAlt :: Lens' EditsListingsDelete' Alt
eldAlt = lens _eldAlt (\ s a -> s{_eldAlt = a})

instance GoogleRequest EditsListingsDelete' where
        type Rs EditsListingsDelete' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsListingsDelete'{..}
          = go _eldQuotaUser (Just _eldPrettyPrint)
              _eldPackageName
              _eldUserIp
              _eldKey
              _eldLanguage
              _eldOauthToken
              _eldEditId
              _eldFields
              (Just _eldAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsDeleteAPI)
                      r
                      u
