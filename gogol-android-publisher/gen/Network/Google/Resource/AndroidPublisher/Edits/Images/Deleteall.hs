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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all images for the specified language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.images.deleteall@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall
    (
    -- * REST Resource
      EditsImagesDeleteallResource

    -- * Creating a Request
    , editsImagesDeleteall
    , EditsImagesDeleteall

    -- * Request Lenses
    , ediPackageName
    , ediImageType
    , ediLanguage
    , ediEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.images.deleteall@ method which the
-- 'EditsImagesDeleteall' request conforms to.
type EditsImagesDeleteallResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" EditsImagesDeleteallImageType :>
                       QueryParam "alt" AltJSON :>
                         Delete '[JSON] ImagesDeleteAllResponse

-- | Deletes all images for the specified language and image type.
--
-- /See:/ 'editsImagesDeleteall' smart constructor.
data EditsImagesDeleteall =
  EditsImagesDeleteall'
    { _ediPackageName :: !Text
    , _ediImageType   :: !EditsImagesDeleteallImageType
    , _ediLanguage    :: !Text
    , _ediEditId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EditsImagesDeleteall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ediPackageName'
--
-- * 'ediImageType'
--
-- * 'ediLanguage'
--
-- * 'ediEditId'
editsImagesDeleteall
    :: Text -- ^ 'ediPackageName'
    -> EditsImagesDeleteallImageType -- ^ 'ediImageType'
    -> Text -- ^ 'ediLanguage'
    -> Text -- ^ 'ediEditId'
    -> EditsImagesDeleteall
editsImagesDeleteall pEdiPackageName_ pEdiImageType_ pEdiLanguage_ pEdiEditId_ =
  EditsImagesDeleteall'
    { _ediPackageName = pEdiPackageName_
    , _ediImageType = pEdiImageType_
    , _ediLanguage = pEdiLanguage_
    , _ediEditId = pEdiEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ediPackageName :: Lens' EditsImagesDeleteall Text
ediPackageName
  = lens _ediPackageName
      (\ s a -> s{_ediPackageName = a})

ediImageType :: Lens' EditsImagesDeleteall EditsImagesDeleteallImageType
ediImageType
  = lens _ediImageType (\ s a -> s{_ediImageType = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
ediLanguage :: Lens' EditsImagesDeleteall Text
ediLanguage
  = lens _ediLanguage (\ s a -> s{_ediLanguage = a})

-- | Unique identifier for this edit.
ediEditId :: Lens' EditsImagesDeleteall Text
ediEditId
  = lens _ediEditId (\ s a -> s{_ediEditId = a})

instance GoogleRequest EditsImagesDeleteall where
        type Rs EditsImagesDeleteall =
             ImagesDeleteAllResponse
        type Scopes EditsImagesDeleteall =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsImagesDeleteall'{..}
          = go _ediPackageName _ediEditId _ediLanguage
              _ediImageType
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsImagesDeleteallResource)
                      mempty
