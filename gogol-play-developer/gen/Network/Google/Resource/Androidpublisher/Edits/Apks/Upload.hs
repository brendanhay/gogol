{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Apks.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsApksUpload@.
module Androidpublisher.Edits.Apks.Upload
    (
    -- * REST Resource
      EditsApksUploadAPI

    -- * Creating a Request
    , editsApksUpload
    , EditsApksUpload

    -- * Request Lenses
    , eauaQuotaUser
    , eauaPrettyPrint
    , eauaPackageName
    , eauaUserIp
    , eauaKey
    , eauaOauthToken
    , eauaEditId
    , eauaFields
    , eauaAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsApksUpload@ which the
-- 'EditsApksUpload' request conforms to.
type EditsApksUploadAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :> "apks" :> Post '[JSON] Apk

--
-- /See:/ 'editsApksUpload' smart constructor.
data EditsApksUpload = EditsApksUpload
    { _eauaQuotaUser   :: !(Maybe Text)
    , _eauaPrettyPrint :: !Bool
    , _eauaPackageName :: !Text
    , _eauaUserIp      :: !(Maybe Text)
    , _eauaKey         :: !(Maybe Text)
    , _eauaOauthToken  :: !(Maybe Text)
    , _eauaEditId      :: !Text
    , _eauaFields      :: !(Maybe Text)
    , _eauaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApksUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eauaQuotaUser'
--
-- * 'eauaPrettyPrint'
--
-- * 'eauaPackageName'
--
-- * 'eauaUserIp'
--
-- * 'eauaKey'
--
-- * 'eauaOauthToken'
--
-- * 'eauaEditId'
--
-- * 'eauaFields'
--
-- * 'eauaAlt'
editsApksUpload
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsApksUpload
editsApksUpload pEauaPackageName_ pEauaEditId_ =
    EditsApksUpload
    { _eauaQuotaUser = Nothing
    , _eauaPrettyPrint = True
    , _eauaPackageName = pEauaPackageName_
    , _eauaUserIp = Nothing
    , _eauaKey = Nothing
    , _eauaOauthToken = Nothing
    , _eauaEditId = pEauaEditId_
    , _eauaFields = Nothing
    , _eauaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eauaQuotaUser :: Lens' EditsApksUpload' (Maybe Text)
eauaQuotaUser
  = lens _eauaQuotaUser
      (\ s a -> s{_eauaQuotaUser = a})

-- | Returns response with indentations and line breaks.
eauaPrettyPrint :: Lens' EditsApksUpload' Bool
eauaPrettyPrint
  = lens _eauaPrettyPrint
      (\ s a -> s{_eauaPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eauaPackageName :: Lens' EditsApksUpload' Text
eauaPackageName
  = lens _eauaPackageName
      (\ s a -> s{_eauaPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eauaUserIp :: Lens' EditsApksUpload' (Maybe Text)
eauaUserIp
  = lens _eauaUserIp (\ s a -> s{_eauaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eauaKey :: Lens' EditsApksUpload' (Maybe Text)
eauaKey = lens _eauaKey (\ s a -> s{_eauaKey = a})

-- | OAuth 2.0 token for the current user.
eauaOauthToken :: Lens' EditsApksUpload' (Maybe Text)
eauaOauthToken
  = lens _eauaOauthToken
      (\ s a -> s{_eauaOauthToken = a})

-- | Unique identifier for this edit.
eauaEditId :: Lens' EditsApksUpload' Text
eauaEditId
  = lens _eauaEditId (\ s a -> s{_eauaEditId = a})

-- | Selector specifying which fields to include in a partial response.
eauaFields :: Lens' EditsApksUpload' (Maybe Text)
eauaFields
  = lens _eauaFields (\ s a -> s{_eauaFields = a})

-- | Data format for the response.
eauaAlt :: Lens' EditsApksUpload' Text
eauaAlt = lens _eauaAlt (\ s a -> s{_eauaAlt = a})

instance GoogleRequest EditsApksUpload' where
        type Rs EditsApksUpload' = Apk
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApksUpload{..}
          = go _eauaQuotaUser _eauaPrettyPrint _eauaPackageName
              _eauaUserIp
              _eauaKey
              _eauaOauthToken
              _eauaEditId
              _eauaFields
              _eauaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EditsApksUploadAPI)
                      r
                      u
