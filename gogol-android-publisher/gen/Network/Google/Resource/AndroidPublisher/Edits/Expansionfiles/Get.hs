{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches the Expansion File configuration for the APK specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsExpansionfilesGet@.
module Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Get
    (
    -- * REST Resource
      EditsExpansionfilesGetResource

    -- * Creating a Request
    , editsExpansionfilesGet'
    , EditsExpansionfilesGet'

    -- * Request Lenses
    , eegQuotaUser
    , eegPrettyPrint
    , eegPackageName
    , eegAPKVersionCode
    , eegUserIP
    , eegKey
    , eegExpansionFileType
    , eegOAuthToken
    , eegEditId
    , eegFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsExpansionfilesGet@ which the
-- 'EditsExpansionfilesGet'' request conforms to.
type EditsExpansionfilesGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   AndroidPublisherEditsExpansionfilesGetExpansionFileType
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ExpansionFile

-- | Fetches the Expansion File configuration for the APK specified.
--
-- /See:/ 'editsExpansionfilesGet'' smart constructor.
data EditsExpansionfilesGet' = EditsExpansionfilesGet'
    { _eegQuotaUser         :: !(Maybe Text)
    , _eegPrettyPrint       :: !Bool
    , _eegPackageName       :: !Text
    , _eegAPKVersionCode    :: !Int32
    , _eegUserIP            :: !(Maybe Text)
    , _eegKey               :: !(Maybe Key)
    , _eegExpansionFileType :: !AndroidPublisherEditsExpansionfilesGetExpansionFileType
    , _eegOAuthToken        :: !(Maybe OAuthToken)
    , _eegEditId            :: !Text
    , _eegFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionfilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eegQuotaUser'
--
-- * 'eegPrettyPrint'
--
-- * 'eegPackageName'
--
-- * 'eegAPKVersionCode'
--
-- * 'eegUserIP'
--
-- * 'eegKey'
--
-- * 'eegExpansionFileType'
--
-- * 'eegOAuthToken'
--
-- * 'eegEditId'
--
-- * 'eegFields'
editsExpansionfilesGet'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> AndroidPublisherEditsExpansionfilesGetExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionfilesGet'
editsExpansionfilesGet' pEegPackageName_ pEegAPKVersionCode_ pEegExpansionFileType_ pEegEditId_ =
    EditsExpansionfilesGet'
    { _eegQuotaUser = Nothing
    , _eegPrettyPrint = True
    , _eegPackageName = pEegPackageName_
    , _eegAPKVersionCode = pEegAPKVersionCode_
    , _eegUserIP = Nothing
    , _eegKey = Nothing
    , _eegExpansionFileType = pEegExpansionFileType_
    , _eegOAuthToken = Nothing
    , _eegEditId = pEegEditId_
    , _eegFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eegQuotaUser :: Lens' EditsExpansionfilesGet' (Maybe Text)
eegQuotaUser
  = lens _eegQuotaUser (\ s a -> s{_eegQuotaUser = a})

-- | Returns response with indentations and line breaks.
eegPrettyPrint :: Lens' EditsExpansionfilesGet' Bool
eegPrettyPrint
  = lens _eegPrettyPrint
      (\ s a -> s{_eegPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eegPackageName :: Lens' EditsExpansionfilesGet' Text
eegPackageName
  = lens _eegPackageName
      (\ s a -> s{_eegPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eegAPKVersionCode :: Lens' EditsExpansionfilesGet' Int32
eegAPKVersionCode
  = lens _eegAPKVersionCode
      (\ s a -> s{_eegAPKVersionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eegUserIP :: Lens' EditsExpansionfilesGet' (Maybe Text)
eegUserIP
  = lens _eegUserIP (\ s a -> s{_eegUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eegKey :: Lens' EditsExpansionfilesGet' (Maybe Key)
eegKey = lens _eegKey (\ s a -> s{_eegKey = a})

eegExpansionFileType :: Lens' EditsExpansionfilesGet' AndroidPublisherEditsExpansionfilesGetExpansionFileType
eegExpansionFileType
  = lens _eegExpansionFileType
      (\ s a -> s{_eegExpansionFileType = a})

-- | OAuth 2.0 token for the current user.
eegOAuthToken :: Lens' EditsExpansionfilesGet' (Maybe OAuthToken)
eegOAuthToken
  = lens _eegOAuthToken
      (\ s a -> s{_eegOAuthToken = a})

-- | Unique identifier for this edit.
eegEditId :: Lens' EditsExpansionfilesGet' Text
eegEditId
  = lens _eegEditId (\ s a -> s{_eegEditId = a})

-- | Selector specifying which fields to include in a partial response.
eegFields :: Lens' EditsExpansionfilesGet' (Maybe Text)
eegFields
  = lens _eegFields (\ s a -> s{_eegFields = a})

instance GoogleAuth EditsExpansionfilesGet' where
        authKey = eegKey . _Just
        authToken = eegOAuthToken . _Just

instance GoogleRequest EditsExpansionfilesGet' where
        type Rs EditsExpansionfilesGet' = ExpansionFile
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsExpansionfilesGet'{..}
          = go _eegPackageName _eegEditId _eegAPKVersionCode
              _eegExpansionFileType
              _eegQuotaUser
              (Just _eegPrettyPrint)
              _eegUserIP
              _eegFields
              _eegKey
              _eegOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsExpansionfilesGetResource)
                      r
                      u
