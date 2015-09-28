{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Details.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches app details for this edit. This includes the default language
-- and developer support contact information.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.details.get@.
module Network.Google.API.Androidpublisher.Edits.Details.Get
    (
    -- * REST Resource
      EditsDetailsGetAPI

    -- * Creating a Request
    , editsDetailsGet'
    , EditsDetailsGet'

    -- * Request Lenses
    , edgQuotaUser
    , edgPrettyPrint
    , edgPackageName
    , edgUserIp
    , edgKey
    , edgOauthToken
    , edgEditId
    , edgFields
    , edgAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.details.get which the
-- 'EditsDetailsGet'' request conforms to.
type EditsDetailsGetAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "details" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] AppDetails

-- | Fetches app details for this edit. This includes the default language
-- and developer support contact information.
--
-- /See:/ 'editsDetailsGet'' smart constructor.
data EditsDetailsGet' = EditsDetailsGet'
    { _edgQuotaUser   :: !(Maybe Text)
    , _edgPrettyPrint :: !Bool
    , _edgPackageName :: !Text
    , _edgUserIp      :: !(Maybe Text)
    , _edgKey         :: !(Maybe Text)
    , _edgOauthToken  :: !(Maybe Text)
    , _edgEditId      :: !Text
    , _edgFields      :: !(Maybe Text)
    , _edgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDetailsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edgQuotaUser'
--
-- * 'edgPrettyPrint'
--
-- * 'edgPackageName'
--
-- * 'edgUserIp'
--
-- * 'edgKey'
--
-- * 'edgOauthToken'
--
-- * 'edgEditId'
--
-- * 'edgFields'
--
-- * 'edgAlt'
editsDetailsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsDetailsGet'
editsDetailsGet' pEdgPackageName_ pEdgEditId_ =
    EditsDetailsGet'
    { _edgQuotaUser = Nothing
    , _edgPrettyPrint = True
    , _edgPackageName = pEdgPackageName_
    , _edgUserIp = Nothing
    , _edgKey = Nothing
    , _edgOauthToken = Nothing
    , _edgEditId = pEdgEditId_
    , _edgFields = Nothing
    , _edgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
edgQuotaUser :: Lens' EditsDetailsGet' (Maybe Text)
edgQuotaUser
  = lens _edgQuotaUser (\ s a -> s{_edgQuotaUser = a})

-- | Returns response with indentations and line breaks.
edgPrettyPrint :: Lens' EditsDetailsGet' Bool
edgPrettyPrint
  = lens _edgPrettyPrint
      (\ s a -> s{_edgPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
edgPackageName :: Lens' EditsDetailsGet' Text
edgPackageName
  = lens _edgPackageName
      (\ s a -> s{_edgPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
edgUserIp :: Lens' EditsDetailsGet' (Maybe Text)
edgUserIp
  = lens _edgUserIp (\ s a -> s{_edgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edgKey :: Lens' EditsDetailsGet' (Maybe Text)
edgKey = lens _edgKey (\ s a -> s{_edgKey = a})

-- | OAuth 2.0 token for the current user.
edgOauthToken :: Lens' EditsDetailsGet' (Maybe Text)
edgOauthToken
  = lens _edgOauthToken
      (\ s a -> s{_edgOauthToken = a})

-- | Unique identifier for this edit.
edgEditId :: Lens' EditsDetailsGet' Text
edgEditId
  = lens _edgEditId (\ s a -> s{_edgEditId = a})

-- | Selector specifying which fields to include in a partial response.
edgFields :: Lens' EditsDetailsGet' (Maybe Text)
edgFields
  = lens _edgFields (\ s a -> s{_edgFields = a})

-- | Data format for the response.
edgAlt :: Lens' EditsDetailsGet' Alt
edgAlt = lens _edgAlt (\ s a -> s{_edgAlt = a})

instance GoogleRequest EditsDetailsGet' where
        type Rs EditsDetailsGet' = AppDetails
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsDetailsGet'{..}
          = go _edgQuotaUser (Just _edgPrettyPrint)
              _edgPackageName
              _edgUserIp
              _edgKey
              _edgOauthToken
              _edgEditId
              _edgFields
              (Just _edgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EditsDetailsGetAPI)
                      r
                      u
