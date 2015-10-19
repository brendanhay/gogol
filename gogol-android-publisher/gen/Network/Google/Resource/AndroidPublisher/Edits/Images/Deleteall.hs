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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all images for the specified language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsImagesDeleteall@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall
    (
    -- * REST Resource
      EditsImagesDeleteallResource

    -- * Creating a Request
    , editsImagesDeleteall'
    , EditsImagesDeleteall'

    -- * Request Lenses
    , eidiPackageName
    , eidiImageType
    , eidiLanguage
    , eidiEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsImagesDeleteall@ method which the
-- 'EditsImagesDeleteall'' request conforms to.
type EditsImagesDeleteallResource =
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
-- /See:/ 'editsImagesDeleteall'' smart constructor.
data EditsImagesDeleteall' = EditsImagesDeleteall'
    { _eidiPackageName :: !Text
    , _eidiImageType   :: !EditsImagesDeleteallImageType
    , _eidiLanguage    :: !Text
    , _eidiEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesDeleteall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidiPackageName'
--
-- * 'eidiImageType'
--
-- * 'eidiLanguage'
--
-- * 'eidiEditId'
editsImagesDeleteall'
    :: Text -- ^ 'packageName'
    -> EditsImagesDeleteallImageType -- ^ 'imageType'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesDeleteall'
editsImagesDeleteall' pEidiPackageName_ pEidiImageType_ pEidiLanguage_ pEidiEditId_ =
    EditsImagesDeleteall'
    { _eidiPackageName = pEidiPackageName_
    , _eidiImageType = pEidiImageType_
    , _eidiLanguage = pEidiLanguage_
    , _eidiEditId = pEidiEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eidiPackageName :: Lens' EditsImagesDeleteall' Text
eidiPackageName
  = lens _eidiPackageName
      (\ s a -> s{_eidiPackageName = a})

eidiImageType :: Lens' EditsImagesDeleteall' EditsImagesDeleteallImageType
eidiImageType
  = lens _eidiImageType
      (\ s a -> s{_eidiImageType = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eidiLanguage :: Lens' EditsImagesDeleteall' Text
eidiLanguage
  = lens _eidiLanguage (\ s a -> s{_eidiLanguage = a})

-- | Unique identifier for this edit.
eidiEditId :: Lens' EditsImagesDeleteall' Text
eidiEditId
  = lens _eidiEditId (\ s a -> s{_eidiEditId = a})

instance GoogleRequest EditsImagesDeleteall' where
        type Rs EditsImagesDeleteall' =
             ImagesDeleteAllResponse
        requestClient EditsImagesDeleteall'{..}
          = go _eidiPackageName _eidiEditId _eidiLanguage
              _eidiImageType
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsImagesDeleteallResource)
                      mempty
