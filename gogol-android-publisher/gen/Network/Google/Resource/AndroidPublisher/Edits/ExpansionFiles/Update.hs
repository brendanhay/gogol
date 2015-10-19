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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.expansionfiles.update@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Update
    (
    -- * REST Resource
      EditsExpansionFilesUpdateResource

    -- * Creating a Request
    , editsExpansionFilesUpdate'
    , EditsExpansionFilesUpdate'

    -- * Request Lenses
    , ePackageName
    , eAPKVersionCode
    , ePayload
    , eExpansionFileType
    , eEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.expansionfiles.update@ method which the
-- 'EditsExpansionFilesUpdate'' request conforms to.
type EditsExpansionFilesUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "expansionFiles" :>
                 Capture "expansionFileType"
                   EditsExpansionFilesUpdateExpansionFileType
                   :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ExpansionFile :>
                       Put '[JSON] ExpansionFile

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method.
--
-- /See:/ 'editsExpansionFilesUpdate'' smart constructor.
data EditsExpansionFilesUpdate' = EditsExpansionFilesUpdate'
    { _ePackageName       :: !Text
    , _eAPKVersionCode    :: !Int32
    , _ePayload           :: !ExpansionFile
    , _eExpansionFileType :: !EditsExpansionFilesUpdateExpansionFileType
    , _eEditId            :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionFilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ePackageName'
--
-- * 'eAPKVersionCode'
--
-- * 'ePayload'
--
-- * 'eExpansionFileType'
--
-- * 'eEditId'
editsExpansionFilesUpdate'
    :: Text -- ^ 'ePackageName'
    -> Int32 -- ^ 'eAPKVersionCode'
    -> ExpansionFile -- ^ 'ePayload'
    -> EditsExpansionFilesUpdateExpansionFileType -- ^ 'eExpansionFileType'
    -> Text -- ^ 'eEditId'
    -> EditsExpansionFilesUpdate'
editsExpansionFilesUpdate' pEPackageName_ pEAPKVersionCode_ pEPayload_ pEExpansionFileType_ pEEditId_ =
    EditsExpansionFilesUpdate'
    { _ePackageName = pEPackageName_
    , _eAPKVersionCode = pEAPKVersionCode_
    , _ePayload = pEPayload_
    , _eExpansionFileType = pEExpansionFileType_
    , _eEditId = pEEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ePackageName :: Lens' EditsExpansionFilesUpdate' Text
ePackageName
  = lens _ePackageName (\ s a -> s{_ePackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eAPKVersionCode :: Lens' EditsExpansionFilesUpdate' Int32
eAPKVersionCode
  = lens _eAPKVersionCode
      (\ s a -> s{_eAPKVersionCode = a})

-- | Multipart request metadata.
ePayload :: Lens' EditsExpansionFilesUpdate' ExpansionFile
ePayload = lens _ePayload (\ s a -> s{_ePayload = a})

eExpansionFileType :: Lens' EditsExpansionFilesUpdate' EditsExpansionFilesUpdateExpansionFileType
eExpansionFileType
  = lens _eExpansionFileType
      (\ s a -> s{_eExpansionFileType = a})

-- | Unique identifier for this edit.
eEditId :: Lens' EditsExpansionFilesUpdate' Text
eEditId = lens _eEditId (\ s a -> s{_eEditId = a})

instance GoogleRequest EditsExpansionFilesUpdate'
         where
        type Rs EditsExpansionFilesUpdate' = ExpansionFile
        requestClient EditsExpansionFilesUpdate'{..}
          = go _ePackageName _eEditId _eAPKVersionCode
              _eExpansionFileType
              (Just AltJSON)
              _ePayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesUpdateResource)
                      mempty
