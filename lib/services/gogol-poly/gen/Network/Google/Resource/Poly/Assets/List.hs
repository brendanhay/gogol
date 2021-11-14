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
-- Module      : Network.Google.Resource.Poly.Assets.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all public, remixable assets. These are assets with an access
-- level of PUBLIC and published under the CC-By license.
--
-- /See:/ <https://developers.google.com/poly/ Poly API Reference> for @poly.assets.list@.
module Network.Google.Resource.Poly.Assets.List
    (
    -- * REST Resource
      AssetsListResource

    -- * Creating a Request
    , assetsList
    , AssetsList

    -- * Request Lenses
    , alXgafv
    , alUploadProtocol
    , alOrderBy
    , alCategory
    , alAccessToken
    , alFormat
    , alUploadType
    , alKeywords
    , alPageToken
    , alCurated
    , alMaxComplexity
    , alPageSize
    , alCallback
    ) where

import Network.Google.Poly.Types
import Network.Google.Prelude

-- | A resource alias for @poly.assets.list@ method which the
-- 'AssetsList' request conforms to.
type AssetsListResource =
     "v1" :>
       "assets" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "orderBy" Text :>
               QueryParam "category" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "format" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "keywords" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "curated" Bool :>
                             QueryParam "maxComplexity" AssetsListMaxComplexity
                               :>
                               QueryParam "pageSize" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListAssetsResponse

-- | Lists all public, remixable assets. These are assets with an access
-- level of PUBLIC and published under the CC-By license.
--
-- /See:/ 'assetsList' smart constructor.
data AssetsList =
  AssetsList'
    { _alXgafv :: !(Maybe Xgafv)
    , _alUploadProtocol :: !(Maybe Text)
    , _alOrderBy :: !(Maybe Text)
    , _alCategory :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alFormat :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alKeywords :: !(Maybe Text)
    , _alPageToken :: !(Maybe Text)
    , _alCurated :: !(Maybe Bool)
    , _alMaxComplexity :: !(Maybe AssetsListMaxComplexity)
    , _alPageSize :: !(Maybe (Textual Int32))
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AssetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alUploadProtocol'
--
-- * 'alOrderBy'
--
-- * 'alCategory'
--
-- * 'alAccessToken'
--
-- * 'alFormat'
--
-- * 'alUploadType'
--
-- * 'alKeywords'
--
-- * 'alPageToken'
--
-- * 'alCurated'
--
-- * 'alMaxComplexity'
--
-- * 'alPageSize'
--
-- * 'alCallback'
assetsList
    :: AssetsList
assetsList =
  AssetsList'
    { _alXgafv = Nothing
    , _alUploadProtocol = Nothing
    , _alOrderBy = Nothing
    , _alCategory = Nothing
    , _alAccessToken = Nothing
    , _alFormat = Nothing
    , _alUploadType = Nothing
    , _alKeywords = Nothing
    , _alPageToken = Nothing
    , _alCurated = Nothing
    , _alMaxComplexity = Nothing
    , _alPageSize = Nothing
    , _alCallback = Nothing
    }


-- | V1 error format.
alXgafv :: Lens' AssetsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AssetsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | Specifies an ordering for assets. Acceptable values are: \`BEST\`,
-- \`NEWEST\`, \`OLDEST\`. Defaults to \`BEST\`, which ranks assets based
-- on a combination of popularity and other features.
alOrderBy :: Lens' AssetsList (Maybe Text)
alOrderBy
  = lens _alOrderBy (\ s a -> s{_alOrderBy = a})

-- | Filter assets based on the specified category. Supported values are:
-- \`animals\`, \`architecture\`, \`art\`, \`food\`, \`nature\`,
-- \`objects\`, \`people\`, \`scenes\`, \`technology\`, and \`transport\`.
alCategory :: Lens' AssetsList (Maybe Text)
alCategory
  = lens _alCategory (\ s a -> s{_alCategory = a})

-- | OAuth access token.
alAccessToken :: Lens' AssetsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Return only assets with the matching format. Acceptable values are:
-- \`BLOCKS\`, \`FBX\`, \`GLTF\`, \`GLTF2\`, \`OBJ\`, \`TILT\`.
alFormat :: Lens' AssetsList (Maybe Text)
alFormat = lens _alFormat (\ s a -> s{_alFormat = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AssetsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | One or more search terms to be matched against all text that Poly has
-- indexed for assets, which includes display_name, description, and tags.
-- Multiple keywords should be separated by spaces.
alKeywords :: Lens' AssetsList (Maybe Text)
alKeywords
  = lens _alKeywords (\ s a -> s{_alKeywords = a})

-- | Specifies a continuation token from a previous search whose results were
-- split into multiple pages. To get the next page, submit the same request
-- specifying the value from next_page_token.
alPageToken :: Lens' AssetsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Return only assets that have been curated by the Poly team.
alCurated :: Lens' AssetsList (Maybe Bool)
alCurated
  = lens _alCurated (\ s a -> s{_alCurated = a})

-- | Returns assets that are of the specified complexity or less. Defaults to
-- COMPLEX. For example, a request for MEDIUM assets also includes SIMPLE
-- assets.
alMaxComplexity :: Lens' AssetsList (Maybe AssetsListMaxComplexity)
alMaxComplexity
  = lens _alMaxComplexity
      (\ s a -> s{_alMaxComplexity = a})

-- | The maximum number of assets to be returned. This value must be between
-- \`1\` and \`100\`. Defaults to \`20\`.
alPageSize :: Lens' AssetsList (Maybe Int32)
alPageSize
  = lens _alPageSize (\ s a -> s{_alPageSize = a}) .
      mapping _Coerce

-- | JSONP
alCallback :: Lens' AssetsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AssetsList where
        type Rs AssetsList = ListAssetsResponse
        type Scopes AssetsList = '[]
        requestClient AssetsList'{..}
          = go _alXgafv _alUploadProtocol _alOrderBy
              _alCategory
              _alAccessToken
              _alFormat
              _alUploadType
              _alKeywords
              _alPageToken
              _alCurated
              _alMaxComplexity
              _alPageSize
              _alCallback
              (Just AltJSON)
              polyService
          where go
                  = buildClient (Proxy :: Proxy AssetsListResource)
                      mempty
