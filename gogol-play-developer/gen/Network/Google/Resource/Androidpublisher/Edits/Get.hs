{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns information about the edit specified. Calls will fail if the
-- edit is no long active (e.g. has been deleted, superseded or expired).
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsGet@.
module Androidpublisher.Edits.Get
    (
    -- * REST Resource
      EditsGetAPI

    -- * Creating a Request
    , editsGet
    , EditsGet

    -- * Request Lenses
    , egQuotaUser
    , egPrettyPrint
    , egPackageName
    , egUserIp
    , egKey
    , egOauthToken
    , egEditId
    , egFields
    , egAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsGet@ which the
-- 'EditsGet' request conforms to.
type EditsGetAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :> Get '[JSON] AppEdit

-- | Returns information about the edit specified. Calls will fail if the
-- edit is no long active (e.g. has been deleted, superseded or expired).
--
-- /See:/ 'editsGet' smart constructor.
data EditsGet = EditsGet
    { _egQuotaUser   :: !(Maybe Text)
    , _egPrettyPrint :: !Bool
    , _egPackageName :: !Text
    , _egUserIp      :: !(Maybe Text)
    , _egKey         :: !(Maybe Text)
    , _egOauthToken  :: !(Maybe Text)
    , _egEditId      :: !Text
    , _egFields      :: !(Maybe Text)
    , _egAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egQuotaUser'
--
-- * 'egPrettyPrint'
--
-- * 'egPackageName'
--
-- * 'egUserIp'
--
-- * 'egKey'
--
-- * 'egOauthToken'
--
-- * 'egEditId'
--
-- * 'egFields'
--
-- * 'egAlt'
editsGet
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsGet
editsGet pEgPackageName_ pEgEditId_ =
    EditsGet
    { _egQuotaUser = Nothing
    , _egPrettyPrint = True
    , _egPackageName = pEgPackageName_
    , _egUserIp = Nothing
    , _egKey = Nothing
    , _egOauthToken = Nothing
    , _egEditId = pEgEditId_
    , _egFields = Nothing
    , _egAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
egQuotaUser :: Lens' EditsGet' (Maybe Text)
egQuotaUser
  = lens _egQuotaUser (\ s a -> s{_egQuotaUser = a})

-- | Returns response with indentations and line breaks.
egPrettyPrint :: Lens' EditsGet' Bool
egPrettyPrint
  = lens _egPrettyPrint
      (\ s a -> s{_egPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
egPackageName :: Lens' EditsGet' Text
egPackageName
  = lens _egPackageName
      (\ s a -> s{_egPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
egUserIp :: Lens' EditsGet' (Maybe Text)
egUserIp = lens _egUserIp (\ s a -> s{_egUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
egKey :: Lens' EditsGet' (Maybe Text)
egKey = lens _egKey (\ s a -> s{_egKey = a})

-- | OAuth 2.0 token for the current user.
egOauthToken :: Lens' EditsGet' (Maybe Text)
egOauthToken
  = lens _egOauthToken (\ s a -> s{_egOauthToken = a})

-- | Unique identifier for this edit.
egEditId :: Lens' EditsGet' Text
egEditId = lens _egEditId (\ s a -> s{_egEditId = a})

-- | Selector specifying which fields to include in a partial response.
egFields :: Lens' EditsGet' (Maybe Text)
egFields = lens _egFields (\ s a -> s{_egFields = a})

-- | Data format for the response.
egAlt :: Lens' EditsGet' Text
egAlt = lens _egAlt (\ s a -> s{_egAlt = a})

instance GoogleRequest EditsGet' where
        type Rs EditsGet' = AppEdit
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsGet{..}
          = go _egQuotaUser _egPrettyPrint _egPackageName
              _egUserIp
              _egKey
              _egOauthToken
              _egEditId
              _egFields
              _egAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EditsGetAPI) r u
