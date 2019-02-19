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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , editsExpansionFilesUpdate
    , EditsExpansionFilesUpdate

    -- * Request Lenses
    , eefuPackageName
    , eefuAPKVersionCode
    , eefuPayload
    , eefuExpansionFileType
    , eefuEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.expansionfiles.update@ method which the
-- 'EditsExpansionFilesUpdate' request conforms to.
type EditsExpansionFilesUpdateResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" (Textual Int32) :>
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
-- /See:/ 'editsExpansionFilesUpdate' smart constructor.
data EditsExpansionFilesUpdate =
  EditsExpansionFilesUpdate'
    { _eefuPackageName       :: !Text
    , _eefuAPKVersionCode    :: !(Textual Int32)
    , _eefuPayload           :: !ExpansionFile
    , _eefuExpansionFileType :: !EditsExpansionFilesUpdateExpansionFileType
    , _eefuEditId            :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsExpansionFilesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefuPackageName'
--
-- * 'eefuAPKVersionCode'
--
-- * 'eefuPayload'
--
-- * 'eefuExpansionFileType'
--
-- * 'eefuEditId'
editsExpansionFilesUpdate
    :: Text -- ^ 'eefuPackageName'
    -> Int32 -- ^ 'eefuAPKVersionCode'
    -> ExpansionFile -- ^ 'eefuPayload'
    -> EditsExpansionFilesUpdateExpansionFileType -- ^ 'eefuExpansionFileType'
    -> Text -- ^ 'eefuEditId'
    -> EditsExpansionFilesUpdate
editsExpansionFilesUpdate pEefuPackageName_ pEefuAPKVersionCode_ pEefuPayload_ pEefuExpansionFileType_ pEefuEditId_ =
  EditsExpansionFilesUpdate'
    { _eefuPackageName = pEefuPackageName_
    , _eefuAPKVersionCode = _Coerce # pEefuAPKVersionCode_
    , _eefuPayload = pEefuPayload_
    , _eefuExpansionFileType = pEefuExpansionFileType_
    , _eefuEditId = pEefuEditId_
    }


-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eefuPackageName :: Lens' EditsExpansionFilesUpdate Text
eefuPackageName
  = lens _eefuPackageName
      (\ s a -> s{_eefuPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eefuAPKVersionCode :: Lens' EditsExpansionFilesUpdate Int32
eefuAPKVersionCode
  = lens _eefuAPKVersionCode
      (\ s a -> s{_eefuAPKVersionCode = a})
      . _Coerce

-- | Multipart request metadata.
eefuPayload :: Lens' EditsExpansionFilesUpdate ExpansionFile
eefuPayload
  = lens _eefuPayload (\ s a -> s{_eefuPayload = a})

eefuExpansionFileType :: Lens' EditsExpansionFilesUpdate EditsExpansionFilesUpdateExpansionFileType
eefuExpansionFileType
  = lens _eefuExpansionFileType
      (\ s a -> s{_eefuExpansionFileType = a})

-- | Unique identifier for this edit.
eefuEditId :: Lens' EditsExpansionFilesUpdate Text
eefuEditId
  = lens _eefuEditId (\ s a -> s{_eefuEditId = a})

instance GoogleRequest EditsExpansionFilesUpdate
         where
        type Rs EditsExpansionFilesUpdate = ExpansionFile
        type Scopes EditsExpansionFilesUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsExpansionFilesUpdate'{..}
          = go _eefuPackageName _eefuEditId _eefuAPKVersionCode
              _eefuExpansionFileType
              (Just AltJSON)
              _eefuPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesUpdateResource)
                      mempty
