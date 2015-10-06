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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads and attaches a new Expansion File to the APK specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsExpansionFilesUpload@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Upload
    (
    -- * REST Resource
      EditsExpansionFilesUploadResource

    -- * Creating a Request
    , editsExpansionFilesUpload'
    , EditsExpansionFilesUpload'

    -- * Request Lenses
    , eefuQuotaUser
    , eefuPrettyPrint
    , eefuPackageName
    , eefuAPKVersionCode
    , eefuUserIP
    , eefuMedia
    , eefuKey
    , eefuExpansionFileType
    , eefuOAuthToken
    , eefuEditId
    , eefuFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsExpansionFilesUpload@ which the
-- 'EditsExpansionFilesUpload'' request conforms to.
type EditsExpansionFilesUploadResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   EditsExpansionFilesUploadExpansionFileType
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[OctetStream] Stream :>
                                   Post '[JSON] ExpansionFilesUploadResponse

-- | Uploads and attaches a new Expansion File to the APK specified.
--
-- /See:/ 'editsExpansionFilesUpload'' smart constructor.
data EditsExpansionFilesUpload' = EditsExpansionFilesUpload'
    { _eefuQuotaUser         :: !(Maybe Text)
    , _eefuPrettyPrint       :: !Bool
    , _eefuPackageName       :: !Text
    , _eefuAPKVersionCode    :: !Int32
    , _eefuUserIP            :: !(Maybe Text)
    , _eefuMedia             :: !Stream
    , _eefuKey               :: !(Maybe AuthKey)
    , _eefuExpansionFileType :: !EditsExpansionFilesUploadExpansionFileType
    , _eefuOAuthToken        :: !(Maybe OAuthToken)
    , _eefuEditId            :: !Text
    , _eefuFields            :: !(Maybe Text)
    }

-- | Creates a value of 'EditsExpansionFilesUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefuQuotaUser'
--
-- * 'eefuPrettyPrint'
--
-- * 'eefuPackageName'
--
-- * 'eefuAPKVersionCode'
--
-- * 'eefuUserIP'
--
-- * 'eefuMedia'
--
-- * 'eefuKey'
--
-- * 'eefuExpansionFileType'
--
-- * 'eefuOAuthToken'
--
-- * 'eefuEditId'
--
-- * 'eefuFields'
editsExpansionFilesUpload'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Stream -- ^ 'media'
    -> EditsExpansionFilesUploadExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionFilesUpload'
editsExpansionFilesUpload' pEefuPackageName_ pEefuAPKVersionCode_ pEefuMedia_ pEefuExpansionFileType_ pEefuEditId_ =
    EditsExpansionFilesUpload'
    { _eefuQuotaUser = Nothing
    , _eefuPrettyPrint = True
    , _eefuPackageName = pEefuPackageName_
    , _eefuAPKVersionCode = pEefuAPKVersionCode_
    , _eefuUserIP = Nothing
    , _eefuMedia = pEefuMedia_
    , _eefuKey = Nothing
    , _eefuExpansionFileType = pEefuExpansionFileType_
    , _eefuOAuthToken = Nothing
    , _eefuEditId = pEefuEditId_
    , _eefuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eefuQuotaUser :: Lens' EditsExpansionFilesUpload' (Maybe Text)
eefuQuotaUser
  = lens _eefuQuotaUser
      (\ s a -> s{_eefuQuotaUser = a})

-- | Returns response with indentations and line breaks.
eefuPrettyPrint :: Lens' EditsExpansionFilesUpload' Bool
eefuPrettyPrint
  = lens _eefuPrettyPrint
      (\ s a -> s{_eefuPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eefuPackageName :: Lens' EditsExpansionFilesUpload' Text
eefuPackageName
  = lens _eefuPackageName
      (\ s a -> s{_eefuPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eefuAPKVersionCode :: Lens' EditsExpansionFilesUpload' Int32
eefuAPKVersionCode
  = lens _eefuAPKVersionCode
      (\ s a -> s{_eefuAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eefuUserIP :: Lens' EditsExpansionFilesUpload' (Maybe Text)
eefuUserIP
  = lens _eefuUserIP (\ s a -> s{_eefuUserIP = a})

eefuMedia :: Lens' EditsExpansionFilesUpload' Stream
eefuMedia
  = lens _eefuMedia (\ s a -> s{_eefuMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eefuKey :: Lens' EditsExpansionFilesUpload' (Maybe AuthKey)
eefuKey = lens _eefuKey (\ s a -> s{_eefuKey = a})

eefuExpansionFileType :: Lens' EditsExpansionFilesUpload' EditsExpansionFilesUploadExpansionFileType
eefuExpansionFileType
  = lens _eefuExpansionFileType
      (\ s a -> s{_eefuExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eefuOAuthToken :: Lens' EditsExpansionFilesUpload' (Maybe OAuthToken)
eefuOAuthToken
  = lens _eefuOAuthToken
      (\ s a -> s{_eefuOAuthToken = a})

-- | Unique identifier for this edit.
eefuEditId :: Lens' EditsExpansionFilesUpload' Text
eefuEditId
  = lens _eefuEditId (\ s a -> s{_eefuEditId = a})

-- | Selector specifying which fields to include in a partial response.
eefuFields :: Lens' EditsExpansionFilesUpload' (Maybe Text)
eefuFields
  = lens _eefuFields (\ s a -> s{_eefuFields = a})

instance GoogleAuth EditsExpansionFilesUpload' where
        authKey = eefuKey . _Just
        authToken = eefuOAuthToken . _Just

instance GoogleRequest EditsExpansionFilesUpload'
         where
        type Rs EditsExpansionFilesUpload' =
             ExpansionFilesUploadResponse
        request = requestWith androidPublisherRequest
        requestWith rq EditsExpansionFilesUpload'{..}
          = go _eefuPackageName _eefuEditId _eefuAPKVersionCode
              _eefuExpansionFileType
              _eefuQuotaUser
              (Just _eefuPrettyPrint)
              _eefuUserIP
              _eefuFields
              _eefuKey
              _eefuOAuthToken
              (Just AltJSON)
              _eefuMedia
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsExpansionFilesUploadResource)
                      rq
