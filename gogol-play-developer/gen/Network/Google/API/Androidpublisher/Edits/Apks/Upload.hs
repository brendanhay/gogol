{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Apks.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apks.upload@.
module Network.Google.API.Androidpublisher.Edits.Apks.Upload
    (
    -- * REST Resource
      EditsApksUploadAPI

    -- * Creating a Request
    , editsApksUpload'
    , EditsApksUpload'

    -- * Request Lenses
    , eauQuotaUser
    , eauPrettyPrint
    , eauPackageName
    , eauUserIp
    , eauKey
    , eauOauthToken
    , eauEditId
    , eauFields
    , eauAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.apks.upload which the
-- 'EditsApksUpload'' request conforms to.
type EditsApksUploadAPI =
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
                         QueryParam "alt" Alt :> Post '[JSON] Apk

--
-- /See:/ 'editsApksUpload'' smart constructor.
data EditsApksUpload' = EditsApksUpload'
    { _eauQuotaUser   :: !(Maybe Text)
    , _eauPrettyPrint :: !Bool
    , _eauPackageName :: !Text
    , _eauUserIp      :: !(Maybe Text)
    , _eauKey         :: !(Maybe Text)
    , _eauOauthToken  :: !(Maybe Text)
    , _eauEditId      :: !Text
    , _eauFields      :: !(Maybe Text)
    , _eauAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsApksUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eauQuotaUser'
--
-- * 'eauPrettyPrint'
--
-- * 'eauPackageName'
--
-- * 'eauUserIp'
--
-- * 'eauKey'
--
-- * 'eauOauthToken'
--
-- * 'eauEditId'
--
-- * 'eauFields'
--
-- * 'eauAlt'
editsApksUpload'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsApksUpload'
editsApksUpload' pEauPackageName_ pEauEditId_ =
    EditsApksUpload'
    { _eauQuotaUser = Nothing
    , _eauPrettyPrint = True
    , _eauPackageName = pEauPackageName_
    , _eauUserIp = Nothing
    , _eauKey = Nothing
    , _eauOauthToken = Nothing
    , _eauEditId = pEauEditId_
    , _eauFields = Nothing
    , _eauAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eauQuotaUser :: Lens' EditsApksUpload' (Maybe Text)
eauQuotaUser
  = lens _eauQuotaUser (\ s a -> s{_eauQuotaUser = a})

-- | Returns response with indentations and line breaks.
eauPrettyPrint :: Lens' EditsApksUpload' Bool
eauPrettyPrint
  = lens _eauPrettyPrint
      (\ s a -> s{_eauPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eauPackageName :: Lens' EditsApksUpload' Text
eauPackageName
  = lens _eauPackageName
      (\ s a -> s{_eauPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eauUserIp :: Lens' EditsApksUpload' (Maybe Text)
eauUserIp
  = lens _eauUserIp (\ s a -> s{_eauUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eauKey :: Lens' EditsApksUpload' (Maybe Text)
eauKey = lens _eauKey (\ s a -> s{_eauKey = a})

-- | OAuth 2.0 token for the current user.
eauOauthToken :: Lens' EditsApksUpload' (Maybe Text)
eauOauthToken
  = lens _eauOauthToken
      (\ s a -> s{_eauOauthToken = a})

-- | Unique identifier for this edit.
eauEditId :: Lens' EditsApksUpload' Text
eauEditId
  = lens _eauEditId (\ s a -> s{_eauEditId = a})

-- | Selector specifying which fields to include in a partial response.
eauFields :: Lens' EditsApksUpload' (Maybe Text)
eauFields
  = lens _eauFields (\ s a -> s{_eauFields = a})

-- | Data format for the response.
eauAlt :: Lens' EditsApksUpload' Alt
eauAlt = lens _eauAlt (\ s a -> s{_eauAlt = a})

instance GoogleRequest EditsApksUpload' where
        type Rs EditsApksUpload' = Apk
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsApksUpload'{..}
          = go _eauQuotaUser (Just _eauPrettyPrint)
              _eauPackageName
              _eauUserIp
              _eauKey
              _eauOauthToken
              _eauEditId
              _eauFields
              (Just _eauAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EditsApksUploadAPI)
                      r
                      u
