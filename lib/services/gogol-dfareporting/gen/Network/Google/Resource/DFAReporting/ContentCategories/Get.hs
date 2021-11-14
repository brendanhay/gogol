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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one content category by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.contentCategories.get@.
module Network.Google.Resource.DFAReporting.ContentCategories.Get
    (
    -- * REST Resource
      ContentCategoriesGetResource

    -- * Creating a Request
    , contentCategoriesGet
    , ContentCategoriesGet

    -- * Request Lenses
    , ccgXgafv
    , ccgUploadProtocol
    , ccgAccessToken
    , ccgUploadType
    , ccgProFileId
    , ccgId
    , ccgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.get@ method which the
-- 'ContentCategoriesGet' request conforms to.
type ContentCategoriesGetResource =
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
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ContentCategory

-- | Gets one content category by ID.
--
-- /See:/ 'contentCategoriesGet' smart constructor.
data ContentCategoriesGet =
  ContentCategoriesGet'
    { _ccgXgafv :: !(Maybe Xgafv)
    , _ccgUploadProtocol :: !(Maybe Text)
    , _ccgAccessToken :: !(Maybe Text)
    , _ccgUploadType :: !(Maybe Text)
    , _ccgProFileId :: !(Textual Int64)
    , _ccgId :: !(Textual Int64)
    , _ccgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContentCategoriesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccgXgafv'
--
-- * 'ccgUploadProtocol'
--
-- * 'ccgAccessToken'
--
-- * 'ccgUploadType'
--
-- * 'ccgProFileId'
--
-- * 'ccgId'
--
-- * 'ccgCallback'
contentCategoriesGet
    :: Int64 -- ^ 'ccgProFileId'
    -> Int64 -- ^ 'ccgId'
    -> ContentCategoriesGet
contentCategoriesGet pCcgProFileId_ pCcgId_ =
  ContentCategoriesGet'
    { _ccgXgafv = Nothing
    , _ccgUploadProtocol = Nothing
    , _ccgAccessToken = Nothing
    , _ccgUploadType = Nothing
    , _ccgProFileId = _Coerce # pCcgProFileId_
    , _ccgId = _Coerce # pCcgId_
    , _ccgCallback = Nothing
    }


-- | V1 error format.
ccgXgafv :: Lens' ContentCategoriesGet (Maybe Xgafv)
ccgXgafv = lens _ccgXgafv (\ s a -> s{_ccgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccgUploadProtocol :: Lens' ContentCategoriesGet (Maybe Text)
ccgUploadProtocol
  = lens _ccgUploadProtocol
      (\ s a -> s{_ccgUploadProtocol = a})

-- | OAuth access token.
ccgAccessToken :: Lens' ContentCategoriesGet (Maybe Text)
ccgAccessToken
  = lens _ccgAccessToken
      (\ s a -> s{_ccgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccgUploadType :: Lens' ContentCategoriesGet (Maybe Text)
ccgUploadType
  = lens _ccgUploadType
      (\ s a -> s{_ccgUploadType = a})

-- | User profile ID associated with this request.
ccgProFileId :: Lens' ContentCategoriesGet Int64
ccgProFileId
  = lens _ccgProFileId (\ s a -> s{_ccgProFileId = a})
      . _Coerce

-- | Content category ID.
ccgId :: Lens' ContentCategoriesGet Int64
ccgId
  = lens _ccgId (\ s a -> s{_ccgId = a}) . _Coerce

-- | JSONP
ccgCallback :: Lens' ContentCategoriesGet (Maybe Text)
ccgCallback
  = lens _ccgCallback (\ s a -> s{_ccgCallback = a})

instance GoogleRequest ContentCategoriesGet where
        type Rs ContentCategoriesGet = ContentCategory
        type Scopes ContentCategoriesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesGet'{..}
          = go _ccgProFileId _ccgId _ccgXgafv
              _ccgUploadProtocol
              _ccgAccessToken
              _ccgUploadType
              _ccgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesGetResource)
                      mempty
