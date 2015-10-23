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
-- Fetches the Expansion File configuration for the APK specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.expansionfiles.get@.
module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Get
    (
    -- * REST Resource
      EditsExpansionFilesGetResource

    -- * Creating a Request
    , editsExpansionFilesGet
    , EditsExpansionFilesGet

    -- * Request Lenses
    , eefgPackageName
    , eefgAPKVersionCode
    , eefgExpansionFileType
    , eefgEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.expansionfiles.get@ method which the
-- 'EditsExpansionFilesGet' request conforms to.
type EditsExpansionFilesGetResource =
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
                         EditsExpansionFilesGetExpansionFileType
                         :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ExpansionFile

-- | Fetches the Expansion File configuration for the APK specified.
--
-- /See:/ 'editsExpansionFilesGet' smart constructor.
data EditsExpansionFilesGet = EditsExpansionFilesGet
    { _eefgPackageName       :: !Text
    , _eefgAPKVersionCode    :: !(JSONText Int32)
    , _eefgExpansionFileType :: !EditsExpansionFilesGetExpansionFileType
    , _eefgEditId            :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsExpansionFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefgPackageName'
--
-- * 'eefgAPKVersionCode'
--
-- * 'eefgExpansionFileType'
--
-- * 'eefgEditId'
editsExpansionFilesGet
    :: Text -- ^ 'eefgPackageName'
    -> Int32 -- ^ 'eefgAPKVersionCode'
    -> EditsExpansionFilesGetExpansionFileType -- ^ 'eefgExpansionFileType'
    -> Text -- ^ 'eefgEditId'
    -> EditsExpansionFilesGet
editsExpansionFilesGet pEefgPackageName_ pEefgAPKVersionCode_ pEefgExpansionFileType_ pEefgEditId_ =
    EditsExpansionFilesGet
    { _eefgPackageName = pEefgPackageName_
    , _eefgAPKVersionCode = _Coerce # pEefgAPKVersionCode_
    , _eefgExpansionFileType = pEefgExpansionFileType_
    , _eefgEditId = pEefgEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eefgPackageName :: Lens' EditsExpansionFilesGet Text
eefgPackageName
  = lens _eefgPackageName
      (\ s a -> s{_eefgPackageName = a})

-- | The version code of the APK whose Expansion File configuration is being
-- read or modified.
eefgAPKVersionCode :: Lens' EditsExpansionFilesGet Int32
eefgAPKVersionCode
  = lens _eefgAPKVersionCode
      (\ s a -> s{_eefgAPKVersionCode = a})
      . _Coerce

eefgExpansionFileType :: Lens' EditsExpansionFilesGet EditsExpansionFilesGetExpansionFileType
eefgExpansionFileType
  = lens _eefgExpansionFileType
      (\ s a -> s{_eefgExpansionFileType = a})

-- | Unique identifier for this edit.
eefgEditId :: Lens' EditsExpansionFilesGet Text
eefgEditId
  = lens _eefgEditId (\ s a -> s{_eefgEditId = a})

instance GoogleRequest EditsExpansionFilesGet where
        type Rs EditsExpansionFilesGet = ExpansionFile
        requestClient EditsExpansionFilesGet{..}
          = go _eefgPackageName _eefgEditId _eefgAPKVersionCode
              _eefgExpansionFileType
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesGetResource)
                      mempty
