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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads and attaches a new Expansion File to the APK specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsExpansionfilesUpload@.
module Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Upload
    (
    -- * REST Resource
      EditsExpansionfilesUploadResource

    -- * Creating a Request
    , editsExpansionfilesUpload'
    , EditsExpansionfilesUpload'

    -- * Request Lenses
    , eeuQuotaUser
    , eeuPrettyPrint
    , eeuPackageName
    , eeuAPKVersionCode
    , eeuUserIP
    , eeuMedia
    , eeuKey
    , eeuExpansionFileType
    , eeuOAuthToken
    , eeuEditId
    , eeuFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsExpansionfilesUpload@ which the
-- 'EditsExpansionfilesUpload'' request conforms to.
type EditsExpansionfilesUploadResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   AndroidPublisherEditsExpansionfilesUploadExpansionFileType
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] ExpansionFilesUploadResponse

-- | Uploads and attaches a new Expansion File to the APK specified.
--
-- /See:/ 'editsExpansionfilesUpload'' smart constructor.
data EditsExpansionfilesUpload' = EditsExpansionfilesUpload'
    { _eeuQuotaUser         :: !(Maybe Text)
    , _eeuPrettyPrint       :: !Bool
    , _eeuPackageName       :: !Text
    , _eeuAPKVersionCode    :: !Int32
    , _eeuUserIP            :: !(Maybe Text)
    , _eeuMedia             :: !Body
    , _eeuKey               :: !(Maybe Key)
    , _eeuExpansionFileType :: !AndroidPublisherEditsExpansionfilesUploadExpansionFileType
    , _eeuOAuthToken        :: !(Maybe OAuthToken)
    , _eeuEditId            :: !Text
    , _eeuFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeuQuotaUser'
--
-- * 'eeuPrettyPrint'
--
-- * 'eeuPackageName'
--
-- * 'eeuAPKVersionCode'
--
-- * 'eeuUserIP'
--
-- * 'eeuMedia'
--
-- * 'eeuKey'
--
-- * 'eeuExpansionFileType'
--
-- * 'eeuOAuthToken'
--
-- * 'eeuEditId'
--
-- * 'eeuFields'
editsExpansionfilesUpload'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Body -- ^ 'media'
    -> AndroidPublisherEditsExpansionfilesUploadExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesUpload'
editsExpansionfilesUpload' pEeuPackageName_ pEeuAPKVersionCode_ pEeuMedia_ pEeuExpansionFileType_ pEeuEditId_ =
    EditsExpansionfilesUpload'
    { _eeuQuotaUser = Nothing
    , _eeuPrettyPrint = True
    , _eeuPackageName = pEeuPackageName_
    , _eeuAPKVersionCode = pEeuAPKVersionCode_
    , _eeuUserIP = Nothing
    , _eeuMedia = pEeuMedia_
    , _eeuKey = Nothing
    , _eeuExpansionFileType = pEeuExpansionFileType_
    , _eeuOAuthToken = Nothing
    , _eeuEditId = pEeuEditId_
    , _eeuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eeuQuotaUser :: Lens' EditsExpansionfilesUpload' (Maybe Text)
eeuQuotaUser
  = lens _eeuQuotaUser (\ s a -> s{_eeuQuotaUser = a})

-- | Returns response with indentations and line breaks.
eeuPrettyPrint :: Lens' EditsExpansionfilesUpload' Bool
eeuPrettyPrint
  = lens _eeuPrettyPrint
      (\ s a -> s{_eeuPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eeuPackageName :: Lens' EditsExpansionfilesUpload' Text
eeuPackageName
  = lens _eeuPackageName
      (\ s a -> s{_eeuPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eeuAPKVersionCode :: Lens' EditsExpansionfilesUpload' Int32
eeuAPKVersionCode
  = lens _eeuAPKVersionCode
      (\ s a -> s{_eeuAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eeuUserIP :: Lens' EditsExpansionfilesUpload' (Maybe Text)
eeuUserIP
  = lens _eeuUserIP (\ s a -> s{_eeuUserIP = a})

eeuMedia :: Lens' EditsExpansionfilesUpload' Body
eeuMedia = lens _eeuMedia (\ s a -> s{_eeuMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eeuKey :: Lens' EditsExpansionfilesUpload' (Maybe Key)
eeuKey = lens _eeuKey (\ s a -> s{_eeuKey = a})

eeuExpansionFileType :: Lens' EditsExpansionfilesUpload' AndroidPublisherEditsExpansionfilesUploadExpansionFileType
eeuExpansionFileType
  = lens _eeuExpansionFileType
      (\ s a -> s{_eeuExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eeuOAuthToken :: Lens' EditsExpansionfilesUpload' (Maybe OAuthToken)
eeuOAuthToken
  = lens _eeuOAuthToken
      (\ s a -> s{_eeuOAuthToken = a})

-- | Unique identifier for this edit.
eeuEditId :: Lens' EditsExpansionfilesUpload' Text
eeuEditId
  = lens _eeuEditId (\ s a -> s{_eeuEditId = a})

-- | Selector specifying which fields to include in a partial response.
eeuFields :: Lens' EditsExpansionfilesUpload' (Maybe Text)
eeuFields
  = lens _eeuFields (\ s a -> s{_eeuFields = a})

instance GoogleAuth EditsExpansionfilesUpload' where
        authKey = eeuKey . _Just
        authToken = eeuOAuthToken . _Just

instance GoogleRequest EditsExpansionfilesUpload'
         where
        type Rs EditsExpansionfilesUpload' =
             ExpansionFilesUploadResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsExpansionfilesUpload'{..}
          = go _eeuMedia _eeuPackageName _eeuEditId
              _eeuAPKVersionCode
              _eeuExpansionFileType
              _eeuQuotaUser
              (Just _eeuPrettyPrint)
              _eeuUserIP
              _eeuFields
              _eeuKey
              _eeuOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesUploadResource)
                      r
                      u
