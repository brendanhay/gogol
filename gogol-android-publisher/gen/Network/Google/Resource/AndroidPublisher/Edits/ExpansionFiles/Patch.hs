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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.expansionfiles.patch@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Patch
    (
    -- * REST Resource
      EditsExpansionFilesPatchResource

    -- * Creating a Request
    , editsExpansionFilesPatch
    , EditsExpansionFilesPatch

    -- * Request Lenses
    , eefpPackageName
    , eefpAPKVersionCode
    , eefpPayload
    , eefpExpansionFileType
    , eefpEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.expansionfiles.patch@ method which the
-- 'EditsExpansionFilesPatch' request conforms to.
type EditsExpansionFilesPatchResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" (JSONText Int32) :>
                     "expansionFiles" :>
                       Capture "expansionFileType"
                         EditsExpansionFilesPatchExpansionFileType
                         :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ExpansionFile :>
                             Patch '[JSON] ExpansionFile

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method. This method supports patch semantics.
--
-- /See:/ 'editsExpansionFilesPatch' smart constructor.
data EditsExpansionFilesPatch = EditsExpansionFilesPatch
    { _eefpPackageName       :: !Text
    , _eefpAPKVersionCode    :: !(JSONText Int32)
    , _eefpPayload           :: !ExpansionFile
    , _eefpExpansionFileType :: !EditsExpansionFilesPatchExpansionFileType
    , _eefpEditId            :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionFilesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefpPackageName'
--
-- * 'eefpAPKVersionCode'
--
-- * 'eefpPayload'
--
-- * 'eefpExpansionFileType'
--
-- * 'eefpEditId'
editsExpansionFilesPatch
    :: Text -- ^ 'eefpPackageName'
    -> Int32 -- ^ 'eefpAPKVersionCode'
    -> ExpansionFile -- ^ 'eefpPayload'
    -> EditsExpansionFilesPatchExpansionFileType -- ^ 'eefpExpansionFileType'
    -> Text -- ^ 'eefpEditId'
    -> EditsExpansionFilesPatch
editsExpansionFilesPatch pEefpPackageName_ pEefpAPKVersionCode_ pEefpPayload_ pEefpExpansionFileType_ pEefpEditId_ =
    EditsExpansionFilesPatch
    { _eefpPackageName = pEefpPackageName_
    , _eefpAPKVersionCode = pEefpAPKVersionCode_
    , _eefpPayload = pEefpPayload_
    , _eefpExpansionFileType = pEefpExpansionFileType_
    , _eefpEditId = pEefpEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eefpPackageName :: Lens' EditsExpansionFilesPatch Text
eefpPackageName
  = lens _eefpPackageName
      (\ s a -> s{_eefpPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eefpAPKVersionCode :: Lens' EditsExpansionFilesPatch Int32
eefpAPKVersionCode
  = lens _eefpAPKVersionCode
      (\ s a -> s{_eefpAPKVersionCode = a})
      . _Coerce

-- | Multipart request metadata.
eefpPayload :: Lens' EditsExpansionFilesPatch ExpansionFile
eefpPayload
  = lens _eefpPayload (\ s a -> s{_eefpPayload = a})

eefpExpansionFileType :: Lens' EditsExpansionFilesPatch EditsExpansionFilesPatchExpansionFileType
eefpExpansionFileType
  = lens _eefpExpansionFileType
      (\ s a -> s{_eefpExpansionFileType = a})

-- | Unique identifier for this edit.
eefpEditId :: Lens' EditsExpansionFilesPatch Text
eefpEditId
  = lens _eefpEditId (\ s a -> s{_eefpEditId = a})

instance GoogleRequest EditsExpansionFilesPatch where
        type Rs EditsExpansionFilesPatch = ExpansionFile
        requestClient EditsExpansionFilesPatch{..}
          = go _eefpPackageName _eefpEditId _eefpAPKVersionCode
              _eefpExpansionFileType
              (Just AltJSON)
              _eefpPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesPatchResource)
                      mempty
