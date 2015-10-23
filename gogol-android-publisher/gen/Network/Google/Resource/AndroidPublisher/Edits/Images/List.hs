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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all images for the specified language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.images.list@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.List
    (
    -- * REST Resource
      EditsImagesListResource

    -- * Creating a Request
    , editsImagesList
    , EditsImagesList

    -- * Request Lenses
    , eilPackageName
    , eilImageType
    , eilLanguage
    , eilEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.images.list@ method which the
-- 'EditsImagesList' request conforms to.
type EditsImagesListResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" EditsImagesListImageType :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ImagesListResponse

-- | Lists all images for the specified language and image type.
--
-- /See:/ 'editsImagesList' smart constructor.
data EditsImagesList = EditsImagesList
    { _eilPackageName :: !Text
    , _eilImageType   :: !EditsImagesListImageType
    , _eilLanguage    :: !Text
    , _eilEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eilPackageName'
--
-- * 'eilImageType'
--
-- * 'eilLanguage'
--
-- * 'eilEditId'
editsImagesList
    :: Text -- ^ 'eilPackageName'
    -> EditsImagesListImageType -- ^ 'eilImageType'
    -> Text -- ^ 'eilLanguage'
    -> Text -- ^ 'eilEditId'
    -> EditsImagesList
editsImagesList pEilPackageName_ pEilImageType_ pEilLanguage_ pEilEditId_ =
    EditsImagesList
    { _eilPackageName = pEilPackageName_
    , _eilImageType = pEilImageType_
    , _eilLanguage = pEilLanguage_
    , _eilEditId = pEilEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eilPackageName :: Lens' EditsImagesList Text
eilPackageName
  = lens _eilPackageName
      (\ s a -> s{_eilPackageName = a})

eilImageType :: Lens' EditsImagesList EditsImagesListImageType
eilImageType
  = lens _eilImageType (\ s a -> s{_eilImageType = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eilLanguage :: Lens' EditsImagesList Text
eilLanguage
  = lens _eilLanguage (\ s a -> s{_eilLanguage = a})

-- | Unique identifier for this edit.
eilEditId :: Lens' EditsImagesList Text
eilEditId
  = lens _eilEditId (\ s a -> s{_eilEditId = a})

instance GoogleRequest EditsImagesList where
        type Rs EditsImagesList = ImagesListResponse
        requestClient EditsImagesList{..}
          = go _eilPackageName _eilEditId _eilLanguage
              _eilImageType
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsImagesListResource)
                      mempty
