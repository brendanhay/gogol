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
-- Uploads and attaches a new Expansion File to the APK specified.
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
    , eefuPackageName
    , eefuAPKVersionCode
    , eefuMedia
    , eefuExpansionFileType
    , eefuEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsExpansionFilesUpload@ method which the
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
                   QueryParam "alt" AltJSON :>
                     ReqBody '[OctetStream] Body :>
                       Post '[JSON] ExpansionFilesUploadResponse

-- | Uploads and attaches a new Expansion File to the APK specified.
--
-- /See:/ 'editsExpansionFilesUpload'' smart constructor.
data EditsExpansionFilesUpload' = EditsExpansionFilesUpload'
    { _eefuPackageName       :: !Text
    , _eefuAPKVersionCode    :: !Int32
    , _eefuMedia             :: !Body
    , _eefuExpansionFileType :: !EditsExpansionFilesUploadExpansionFileType
    , _eefuEditId            :: !Text
    }

-- | Creates a value of 'EditsExpansionFilesUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eefuPackageName'
--
-- * 'eefuAPKVersionCode'
--
-- * 'eefuMedia'
--
-- * 'eefuExpansionFileType'
--
-- * 'eefuEditId'
editsExpansionFilesUpload'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Body -- ^ 'media'
    -> EditsExpansionFilesUploadExpansionFileType -- ^ 'expansionFileType'
    -> Text -- ^ 'editId'
    -> EditsExpansionFilesUpload'
editsExpansionFilesUpload' pEefuPackageName_ pEefuAPKVersionCode_ pEefuMedia_ pEefuExpansionFileType_ pEefuEditId_ =
    EditsExpansionFilesUpload'
    { _eefuPackageName = pEefuPackageName_
    , _eefuAPKVersionCode = pEefuAPKVersionCode_
    , _eefuMedia = pEefuMedia_
    , _eefuExpansionFileType = pEefuExpansionFileType_
    , _eefuEditId = pEefuEditId_
    }

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

eefuMedia :: Lens' EditsExpansionFilesUpload' Body
eefuMedia
  = lens _eefuMedia (\ s a -> s{_eefuMedia = a})

eefuExpansionFileType :: Lens' EditsExpansionFilesUpload' EditsExpansionFilesUploadExpansionFileType
eefuExpansionFileType
  = lens _eefuExpansionFileType
      (\ s a -> s{_eefuExpansionFileType = a})

-- | Unique identifier for this edit.
eefuEditId :: Lens' EditsExpansionFilesUpload' Text
eefuEditId
  = lens _eefuEditId (\ s a -> s{_eefuEditId = a})

instance GoogleRequest EditsExpansionFilesUpload'
         where
        type Rs EditsExpansionFilesUpload' =
             ExpansionFilesUploadResponse
        requestClient EditsExpansionFilesUpload'{..}
          = go _eefuPackageName _eefuEditId _eefuAPKVersionCode
              _eefuExpansionFileType
              (Just AltJSON)
              _eefuMedia
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsExpansionFilesUploadResource)
                      mempty
