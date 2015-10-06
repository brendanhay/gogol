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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches the Expansion File configuration for the APK specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsExpansionFilesGet@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Get
    (
    -- * REST Resource
      EditsExpansionFilesGetResource

    -- * Creating a Request
    , editsExpansionFilesGet'
    , EditsExpansionFilesGet'

    -- * Request Lenses
    , eefgQuotaUser
    , eefgPrettyPrint
    , eefgPackageName
    , eefgAPKVersionCode
    , eefgUserIP
    , eefgKey
    , eefgExpansionFileType
    , eefgOAuthToken
    , eefgEditId
    , eefgFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsExpansionFilesGet@ which the
-- 'EditsExpansionFilesGet'' request conforms to.
type EditsExpansionFilesGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   EditsExpansionFilesGetExpansionFileType
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ExpansionFile

-- | Fetches the Expansion File configuration for the APK specified.
--
-- /See:/ 'editsExpansionFilesGet'' smart constructor.
data EditsExpansionFilesGet' = EditsExpansionFilesGet'
    { _eefgQuotaUser         :: !(Maybe Text)
    , _eefgPrettyPrint       :: !Bool
    , _eefgPackageName       :: !Text
    , _eefgAPKVersionCode    :: !Int32
    , _eefgUserIP            :: !(Maybe Text)
    , _eefgKey               :: !(Maybe AuthKey)
    , _eefgExpansionFileType :: !EditsExpansionFilesGetExpansionFileType
    , _eefgOAuthToken        :: !(Maybe OAuthToken)
    , _eefgEditId            :: !Text
    , _eefgFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionFilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefgQuotaUser'
--
-- * 'eefgPrettyPrint'
--
-- * 'eefgPackageName'
--
-- * 'eefgAPKVersionCode'
--
-- * 'eefgUserIP'
--
-- * 'eefgKey'
--
-- * 'eefgExpansionFileType'
--
-- * 'eefgOAuthToken'
--
-- * 'eefgEditId'
--
-- * 'eefgFields'
editsExpansionFilesGet'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> EditsExpansionFilesGetExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionFilesGet'
editsExpansionFilesGet' pEefgPackageName_ pEefgAPKVersionCode_ pEefgExpansionFileType_ pEefgEditId_ =
    EditsExpansionFilesGet'
    { _eefgQuotaUser = Nothing
    , _eefgPrettyPrint = True
    , _eefgPackageName = pEefgPackageName_
    , _eefgAPKVersionCode = pEefgAPKVersionCode_
    , _eefgUserIP = Nothing
    , _eefgKey = Nothing
    , _eefgExpansionFileType = pEefgExpansionFileType_
    , _eefgOAuthToken = Nothing
    , _eefgEditId = pEefgEditId_
    , _eefgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eefgQuotaUser :: Lens' EditsExpansionFilesGet' (Maybe Text)
eefgQuotaUser
  = lens _eefgQuotaUser
      (\ s a -> s{_eefgQuotaUser = a})

-- | Returns response with indentations and line breaks.
eefgPrettyPrint :: Lens' EditsExpansionFilesGet' Bool
eefgPrettyPrint
  = lens _eefgPrettyPrint
      (\ s a -> s{_eefgPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eefgPackageName :: Lens' EditsExpansionFilesGet' Text
eefgPackageName
  = lens _eefgPackageName
      (\ s a -> s{_eefgPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eefgAPKVersionCode :: Lens' EditsExpansionFilesGet' Int32
eefgAPKVersionCode
  = lens _eefgAPKVersionCode
      (\ s a -> s{_eefgAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eefgUserIP :: Lens' EditsExpansionFilesGet' (Maybe Text)
eefgUserIP
  = lens _eefgUserIP (\ s a -> s{_eefgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eefgKey :: Lens' EditsExpansionFilesGet' (Maybe AuthKey)
eefgKey = lens _eefgKey (\ s a -> s{_eefgKey = a})

eefgExpansionFileType :: Lens' EditsExpansionFilesGet' EditsExpansionFilesGetExpansionFileType
eefgExpansionFileType
  = lens _eefgExpansionFileType
      (\ s a -> s{_eefgExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eefgOAuthToken :: Lens' EditsExpansionFilesGet' (Maybe OAuthToken)
eefgOAuthToken
  = lens _eefgOAuthToken
      (\ s a -> s{_eefgOAuthToken = a})

-- | Unique identifier for this edit.
eefgEditId :: Lens' EditsExpansionFilesGet' Text
eefgEditId
  = lens _eefgEditId (\ s a -> s{_eefgEditId = a})

-- | Selector specifying which fields to include in a partial response.
eefgFields :: Lens' EditsExpansionFilesGet' (Maybe Text)
eefgFields
  = lens _eefgFields (\ s a -> s{_eefgFields = a})

instance GoogleAuth EditsExpansionFilesGet' where
        _AuthKey = eefgKey . _Just
        _AuthToken = eefgOAuthToken . _Just

instance GoogleRequest EditsExpansionFilesGet' where
        type Rs EditsExpansionFilesGet' = ExpansionFile
        request = requestWith androidPublisherRequest
        requestWith rq EditsExpansionFilesGet'{..}
          = go _eefgPackageName _eefgEditId _eefgAPKVersionCode
              _eefgExpansionFileType
              _eefgQuotaUser
              (Just _eefgPrettyPrint)
              _eefgUserIP
              _eefgFields
              _eefgKey
              _eefgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsExpansionFilesGetResource)
                      rq
