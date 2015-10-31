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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the image (specified by id) from the edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.images.delete@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Delete
    (
    -- * REST Resource
      EditsImagesDeleteResource

    -- * Creating a Request
    , editsImagesDelete
    , EditsImagesDelete

    -- * Request Lenses
    , eidPackageName
    , eidImageType
    , eidImageId
    , eidLanguage
    , eidEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.images.delete@ method which the
-- 'EditsImagesDelete' request conforms to.
type EditsImagesDeleteResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" EditsImagesDeleteImageType :>
                       Capture "imageId" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the image (specified by id) from the edit.
--
-- /See:/ 'editsImagesDelete' smart constructor.
data EditsImagesDelete = EditsImagesDelete
    { _eidPackageName :: !Text
    , _eidImageType   :: !EditsImagesDeleteImageType
    , _eidImageId     :: !Text
    , _eidLanguage    :: !Text
    , _eidEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidPackageName'
--
-- * 'eidImageType'
--
-- * 'eidImageId'
--
-- * 'eidLanguage'
--
-- * 'eidEditId'
editsImagesDelete
    :: Text -- ^ 'eidPackageName'
    -> EditsImagesDeleteImageType -- ^ 'eidImageType'
    -> Text -- ^ 'eidImageId'
    -> Text -- ^ 'eidLanguage'
    -> Text -- ^ 'eidEditId'
    -> EditsImagesDelete
editsImagesDelete pEidPackageName_ pEidImageType_ pEidImageId_ pEidLanguage_ pEidEditId_ =
    EditsImagesDelete
    { _eidPackageName = pEidPackageName_
    , _eidImageType = pEidImageType_
    , _eidImageId = pEidImageId_
    , _eidLanguage = pEidLanguage_
    , _eidEditId = pEidEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eidPackageName :: Lens' EditsImagesDelete Text
eidPackageName
  = lens _eidPackageName
      (\ s a -> s{_eidPackageName = a})

eidImageType :: Lens' EditsImagesDelete EditsImagesDeleteImageType
eidImageType
  = lens _eidImageType (\ s a -> s{_eidImageType = a})

-- | Unique identifier an image within the set of images attached to this
-- edit.
eidImageId :: Lens' EditsImagesDelete Text
eidImageId
  = lens _eidImageId (\ s a -> s{_eidImageId = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eidLanguage :: Lens' EditsImagesDelete Text
eidLanguage
  = lens _eidLanguage (\ s a -> s{_eidLanguage = a})

-- | Unique identifier for this edit.
eidEditId :: Lens' EditsImagesDelete Text
eidEditId
  = lens _eidEditId (\ s a -> s{_eidEditId = a})

instance GoogleRequest EditsImagesDelete where
        type Rs EditsImagesDelete = ()
        type Scopes EditsImagesDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsImagesDelete{..}
          = go _eidPackageName _eidEditId _eidLanguage
              _eidImageType
              _eidImageId
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsImagesDeleteResource)
                      mempty
