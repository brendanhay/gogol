{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Apks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apks.list@.
module Network.Google.API.Androidpublisher.Edits.Apks.List
    (
    -- * REST Resource
      EditsApksListAPI

    -- * Creating a Request
    , editsApksList'
    , EditsApksList'

    -- * Request Lenses
    , ealaQuotaUser
    , ealaPrettyPrint
    , ealaPackageName
    , ealaUserIp
    , ealaKey
    , ealaOauthToken
    , ealaEditId
    , ealaFields
    , ealaAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.apks.list which the
-- 'EditsApksList'' request conforms to.
type EditsApksListAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] ApksListResponse

--
-- /See:/ 'editsApksList'' smart constructor.
data EditsApksList' = EditsApksList'
    { _ealaQuotaUser   :: !(Maybe Text)
    , _ealaPrettyPrint :: !Bool
    , _ealaPackageName :: !Text
    , _ealaUserIp      :: !(Maybe Text)
    , _ealaKey         :: !(Maybe Text)
    , _ealaOauthToken  :: !(Maybe Text)
    , _ealaEditId      :: !Text
    , _ealaFields      :: !(Maybe Text)
    , _ealaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ealaQuotaUser'
--
-- * 'ealaPrettyPrint'
--
-- * 'ealaPackageName'
--
-- * 'ealaUserIp'
--
-- * 'ealaKey'
--
-- * 'ealaOauthToken'
--
-- * 'ealaEditId'
--
-- * 'ealaFields'
--
-- * 'ealaAlt'
editsApksList'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsApksList'
editsApksList' pEalaPackageName_ pEalaEditId_ =
    EditsApksList'
    { _ealaQuotaUser = Nothing
    , _ealaPrettyPrint = True
    , _ealaPackageName = pEalaPackageName_
    , _ealaUserIp = Nothing
    , _ealaKey = Nothing
    , _ealaOauthToken = Nothing
    , _ealaEditId = pEalaEditId_
    , _ealaFields = Nothing
    , _ealaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ealaQuotaUser :: Lens' EditsApksList' (Maybe Text)
ealaQuotaUser
  = lens _ealaQuotaUser
      (\ s a -> s{_ealaQuotaUser = a})

-- | Returns response with indentations and line breaks.
ealaPrettyPrint :: Lens' EditsApksList' Bool
ealaPrettyPrint
  = lens _ealaPrettyPrint
      (\ s a -> s{_ealaPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ealaPackageName :: Lens' EditsApksList' Text
ealaPackageName
  = lens _ealaPackageName
      (\ s a -> s{_ealaPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ealaUserIp :: Lens' EditsApksList' (Maybe Text)
ealaUserIp
  = lens _ealaUserIp (\ s a -> s{_ealaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ealaKey :: Lens' EditsApksList' (Maybe Text)
ealaKey = lens _ealaKey (\ s a -> s{_ealaKey = a})

-- | OAuth 2.0 token for the current user.
ealaOauthToken :: Lens' EditsApksList' (Maybe Text)
ealaOauthToken
  = lens _ealaOauthToken
      (\ s a -> s{_ealaOauthToken = a})

-- | Unique identifier for this edit.
ealaEditId :: Lens' EditsApksList' Text
ealaEditId
  = lens _ealaEditId (\ s a -> s{_ealaEditId = a})

-- | Selector specifying which fields to include in a partial response.
ealaFields :: Lens' EditsApksList' (Maybe Text)
ealaFields
  = lens _ealaFields (\ s a -> s{_ealaFields = a})

-- | Data format for the response.
ealaAlt :: Lens' EditsApksList' Alt
ealaAlt = lens _ealaAlt (\ s a -> s{_ealaAlt = a})

instance GoogleRequest EditsApksList' where
        type Rs EditsApksList' = ApksListResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApksList'{..}
          = go _ealaQuotaUser (Just _ealaPrettyPrint)
              _ealaPackageName
              _ealaUserIp
              _ealaKey
              _ealaOauthToken
              _ealaEditId
              _ealaFields
              (Just _ealaAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EditsApksListAPI) r
                      u
