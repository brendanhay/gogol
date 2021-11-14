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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing content category.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.contentCategories.delete@.
module Network.Google.Resource.DFAReporting.ContentCategories.Delete
    (
    -- * REST Resource
      ContentCategoriesDeleteResource

    -- * Creating a Request
    , contentCategoriesDelete
    , ContentCategoriesDelete

    -- * Request Lenses
    , ccdXgafv
    , ccdUploadProtocol
    , ccdAccessToken
    , ccdUploadType
    , ccdProFileId
    , ccdId
    , ccdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.delete@ method which the
-- 'ContentCategoriesDelete' request conforms to.
type ContentCategoriesDeleteResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "contentCategories" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing content category.
--
-- /See:/ 'contentCategoriesDelete' smart constructor.
data ContentCategoriesDelete =
  ContentCategoriesDelete'
    { _ccdXgafv :: !(Maybe Xgafv)
    , _ccdUploadProtocol :: !(Maybe Text)
    , _ccdAccessToken :: !(Maybe Text)
    , _ccdUploadType :: !(Maybe Text)
    , _ccdProFileId :: !(Textual Int64)
    , _ccdId :: !(Textual Int64)
    , _ccdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContentCategoriesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdXgafv'
--
-- * 'ccdUploadProtocol'
--
-- * 'ccdAccessToken'
--
-- * 'ccdUploadType'
--
-- * 'ccdProFileId'
--
-- * 'ccdId'
--
-- * 'ccdCallback'
contentCategoriesDelete
    :: Int64 -- ^ 'ccdProFileId'
    -> Int64 -- ^ 'ccdId'
    -> ContentCategoriesDelete
contentCategoriesDelete pCcdProFileId_ pCcdId_ =
  ContentCategoriesDelete'
    { _ccdXgafv = Nothing
    , _ccdUploadProtocol = Nothing
    , _ccdAccessToken = Nothing
    , _ccdUploadType = Nothing
    , _ccdProFileId = _Coerce # pCcdProFileId_
    , _ccdId = _Coerce # pCcdId_
    , _ccdCallback = Nothing
    }


-- | V1 error format.
ccdXgafv :: Lens' ContentCategoriesDelete (Maybe Xgafv)
ccdXgafv = lens _ccdXgafv (\ s a -> s{_ccdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccdUploadProtocol :: Lens' ContentCategoriesDelete (Maybe Text)
ccdUploadProtocol
  = lens _ccdUploadProtocol
      (\ s a -> s{_ccdUploadProtocol = a})

-- | OAuth access token.
ccdAccessToken :: Lens' ContentCategoriesDelete (Maybe Text)
ccdAccessToken
  = lens _ccdAccessToken
      (\ s a -> s{_ccdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccdUploadType :: Lens' ContentCategoriesDelete (Maybe Text)
ccdUploadType
  = lens _ccdUploadType
      (\ s a -> s{_ccdUploadType = a})

-- | User profile ID associated with this request.
ccdProFileId :: Lens' ContentCategoriesDelete Int64
ccdProFileId
  = lens _ccdProFileId (\ s a -> s{_ccdProFileId = a})
      . _Coerce

-- | Content category ID.
ccdId :: Lens' ContentCategoriesDelete Int64
ccdId
  = lens _ccdId (\ s a -> s{_ccdId = a}) . _Coerce

-- | JSONP
ccdCallback :: Lens' ContentCategoriesDelete (Maybe Text)
ccdCallback
  = lens _ccdCallback (\ s a -> s{_ccdCallback = a})

instance GoogleRequest ContentCategoriesDelete where
        type Rs ContentCategoriesDelete = ()
        type Scopes ContentCategoriesDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesDelete'{..}
          = go _ccdProFileId _ccdId _ccdXgafv
              _ccdUploadProtocol
              _ccdAccessToken
              _ccdUploadType
              _ccdCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesDeleteResource)
                      mempty
