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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing content category. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.contentCategories.patch@.
module Network.Google.Resource.DFAReporting.ContentCategories.Patch
    (
    -- * REST Resource
      ContentCategoriesPatchResource

    -- * Creating a Request
    , contentCategoriesPatch
    , ContentCategoriesPatch

    -- * Request Lenses
    , ccpXgafv
    , ccpUploadProtocol
    , ccpAccessToken
    , ccpUploadType
    , ccpProFileId
    , ccpPayload
    , ccpId
    , ccpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.contentCategories.patch@ method which the
-- 'ContentCategoriesPatch' request conforms to.
type ContentCategoriesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "contentCategories" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ContentCategory :>
                               Patch '[JSON] ContentCategory

-- | Updates an existing content category. This method supports patch
-- semantics.
--
-- /See:/ 'contentCategoriesPatch' smart constructor.
data ContentCategoriesPatch =
  ContentCategoriesPatch'
    { _ccpXgafv :: !(Maybe Xgafv)
    , _ccpUploadProtocol :: !(Maybe Text)
    , _ccpAccessToken :: !(Maybe Text)
    , _ccpUploadType :: !(Maybe Text)
    , _ccpProFileId :: !(Textual Int64)
    , _ccpPayload :: !ContentCategory
    , _ccpId :: !(Textual Int64)
    , _ccpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContentCategoriesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpXgafv'
--
-- * 'ccpUploadProtocol'
--
-- * 'ccpAccessToken'
--
-- * 'ccpUploadType'
--
-- * 'ccpProFileId'
--
-- * 'ccpPayload'
--
-- * 'ccpId'
--
-- * 'ccpCallback'
contentCategoriesPatch
    :: Int64 -- ^ 'ccpProFileId'
    -> ContentCategory -- ^ 'ccpPayload'
    -> Int64 -- ^ 'ccpId'
    -> ContentCategoriesPatch
contentCategoriesPatch pCcpProFileId_ pCcpPayload_ pCcpId_ =
  ContentCategoriesPatch'
    { _ccpXgafv = Nothing
    , _ccpUploadProtocol = Nothing
    , _ccpAccessToken = Nothing
    , _ccpUploadType = Nothing
    , _ccpProFileId = _Coerce # pCcpProFileId_
    , _ccpPayload = pCcpPayload_
    , _ccpId = _Coerce # pCcpId_
    , _ccpCallback = Nothing
    }


-- | V1 error format.
ccpXgafv :: Lens' ContentCategoriesPatch (Maybe Xgafv)
ccpXgafv = lens _ccpXgafv (\ s a -> s{_ccpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccpUploadProtocol :: Lens' ContentCategoriesPatch (Maybe Text)
ccpUploadProtocol
  = lens _ccpUploadProtocol
      (\ s a -> s{_ccpUploadProtocol = a})

-- | OAuth access token.
ccpAccessToken :: Lens' ContentCategoriesPatch (Maybe Text)
ccpAccessToken
  = lens _ccpAccessToken
      (\ s a -> s{_ccpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccpUploadType :: Lens' ContentCategoriesPatch (Maybe Text)
ccpUploadType
  = lens _ccpUploadType
      (\ s a -> s{_ccpUploadType = a})

-- | User profile ID associated with this request.
ccpProFileId :: Lens' ContentCategoriesPatch Int64
ccpProFileId
  = lens _ccpProFileId (\ s a -> s{_ccpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
ccpPayload :: Lens' ContentCategoriesPatch ContentCategory
ccpPayload
  = lens _ccpPayload (\ s a -> s{_ccpPayload = a})

-- | ContentCategory ID.
ccpId :: Lens' ContentCategoriesPatch Int64
ccpId
  = lens _ccpId (\ s a -> s{_ccpId = a}) . _Coerce

-- | JSONP
ccpCallback :: Lens' ContentCategoriesPatch (Maybe Text)
ccpCallback
  = lens _ccpCallback (\ s a -> s{_ccpCallback = a})

instance GoogleRequest ContentCategoriesPatch where
        type Rs ContentCategoriesPatch = ContentCategory
        type Scopes ContentCategoriesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ContentCategoriesPatch'{..}
          = go _ccpProFileId (Just _ccpId) _ccpXgafv
              _ccpUploadProtocol
              _ccpAccessToken
              _ccpUploadType
              _ccpCallback
              (Just AltJSON)
              _ccpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ContentCategoriesPatchResource)
                      mempty
