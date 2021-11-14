{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudPrivateCatalog.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudPrivateCatalog.Types.Product where

import Network.Google.CloudPrivateCatalog.Types.Sum
import Network.Google.Prelude

-- | Response message for PrivateCatalog.SearchCatalogs.
--
-- /See:/ 'googleCloudPrivatecatalogV1beta1SearchCatalogsResponse' smart constructor.
data GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse =
  GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse'
    { _gcpvscrNextPageToken :: !(Maybe Text)
    , _gcpvscrCatalogs :: !(Maybe [GoogleCloudPrivatecatalogV1beta1Catalog])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvscrNextPageToken'
--
-- * 'gcpvscrCatalogs'
googleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    :: GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
googleCloudPrivatecatalogV1beta1SearchCatalogsResponse =
  GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse'
    {_gcpvscrNextPageToken = Nothing, _gcpvscrCatalogs = Nothing}


-- | A pagination token returned from a previous call to SearchCatalogs that
-- indicates from where listing should continue. This field is optional.
gcpvscrNextPageToken :: Lens' GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse (Maybe Text)
gcpvscrNextPageToken
  = lens _gcpvscrNextPageToken
      (\ s a -> s{_gcpvscrNextPageToken = a})

-- | The \`Catalog\`s computed from the resource context.
gcpvscrCatalogs :: Lens' GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse [GoogleCloudPrivatecatalogV1beta1Catalog]
gcpvscrCatalogs
  = lens _gcpvscrCatalogs
      (\ s a -> s{_gcpvscrCatalogs = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse"
              (\ o ->
                 GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "catalogs" .!= mempty))

instance ToJSON
           GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
         where
        toJSON
          GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcpvscrNextPageToken,
                  ("catalogs" .=) <$> _gcpvscrCatalogs])

-- | Output only. The display metadata to describe the product. The JSON
-- schema of the metadata differs by Product.asset_type. When the type is
-- \`google.deploymentmanager.Template\`, the schema is as follows: \`\`\`
-- \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object
-- properties: name: type: string minLength: 1 maxLength: 64 description:
-- type: string minLength: 1 maxLength: 2048 tagline: type: string
-- minLength: 1 maxLength: 100 support_info: type: string minLength: 1
-- maxLength: 2048 creator: type: string minLength: 1 maxLength: 100
-- documentation: type: array items: type: object properties: url: type:
-- string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- title: type: string minLength: 1 maxLength: 64 description: type: string
-- minLength: 1 maxLength: 2048 required: - name - description
-- additionalProperties: false \`\`\` When the asset type is
-- \`google.cloudprivatecatalog.ListingOnly\`, the schema is as follows:
-- \`\`\` \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type:
-- object properties: name: type: string minLength: 1 maxLength: 64
-- description: type: string minLength: 1 maxLength: 2048 tagline: type:
-- string minLength: 1 maxLength: 100 support_info: type: string minLength:
-- 1 maxLength: 2048 creator: type: string minLength: 1 maxLength: 100
-- documentation: type: array items: type: object properties: url: type:
-- string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- title: type: string minLength: 1 maxLength: 64 description: type: string
-- minLength: 1 maxLength: 2048 signup_url: type: string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- required: - name - description - signup_url additionalProperties: false
-- \`\`\`
--
-- /See:/ 'googleCloudPrivatecatalogV1beta1ProductDisplayMetadata' smart constructor.
newtype GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata =
  GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata'
    { _gcpvpdmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvpdmAddtional'
googleCloudPrivatecatalogV1beta1ProductDisplayMetadata
    :: HashMap Text JSONValue -- ^ 'gcpvpdmAddtional'
    -> GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata
googleCloudPrivatecatalogV1beta1ProductDisplayMetadata pGcpvpdmAddtional_ =
  GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata'
    {_gcpvpdmAddtional = _Coerce # pGcpvpdmAddtional_}


-- | Properties of the object.
gcpvpdmAddtional :: Lens' GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata (HashMap Text JSONValue)
gcpvpdmAddtional
  = lens _gcpvpdmAddtional
      (\ s a -> s{_gcpvpdmAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata"
              (\ o ->
                 GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata
         where
        toJSON = toJSON . _gcpvpdmAddtional

-- | The readonly representation of a catalog computed with a given resource
-- context.
--
-- /See:/ 'googleCloudPrivatecatalogV1beta1Catalog' smart constructor.
data GoogleCloudPrivatecatalogV1beta1Catalog =
  GoogleCloudPrivatecatalogV1beta1Catalog'
    { _gcpvcUpdateTime :: !(Maybe DateTime')
    , _gcpvcName :: !(Maybe Text)
    , _gcpvcDisplayName :: !(Maybe Text)
    , _gcpvcDescription :: !(Maybe Text)
    , _gcpvcCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1Catalog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvcUpdateTime'
--
-- * 'gcpvcName'
--
-- * 'gcpvcDisplayName'
--
-- * 'gcpvcDescription'
--
-- * 'gcpvcCreateTime'
googleCloudPrivatecatalogV1beta1Catalog
    :: GoogleCloudPrivatecatalogV1beta1Catalog
googleCloudPrivatecatalogV1beta1Catalog =
  GoogleCloudPrivatecatalogV1beta1Catalog'
    { _gcpvcUpdateTime = Nothing
    , _gcpvcName = Nothing
    , _gcpvcDisplayName = Nothing
    , _gcpvcDescription = Nothing
    , _gcpvcCreateTime = Nothing
    }


-- | Output only. The time when the catalog was last updated.
gcpvcUpdateTime :: Lens' GoogleCloudPrivatecatalogV1beta1Catalog (Maybe UTCTime)
gcpvcUpdateTime
  = lens _gcpvcUpdateTime
      (\ s a -> s{_gcpvcUpdateTime = a})
      . mapping _DateTime

-- | Output only. The resource name of the target catalog, in the format of
-- \`catalogs\/{catalog_id}\'.
gcpvcName :: Lens' GoogleCloudPrivatecatalogV1beta1Catalog (Maybe Text)
gcpvcName
  = lens _gcpvcName (\ s a -> s{_gcpvcName = a})

-- | Output only. The descriptive name of the catalog as it appears in UIs.
gcpvcDisplayName :: Lens' GoogleCloudPrivatecatalogV1beta1Catalog (Maybe Text)
gcpvcDisplayName
  = lens _gcpvcDisplayName
      (\ s a -> s{_gcpvcDisplayName = a})

-- | Output only. The description of the catalog.
gcpvcDescription :: Lens' GoogleCloudPrivatecatalogV1beta1Catalog (Maybe Text)
gcpvcDescription
  = lens _gcpvcDescription
      (\ s a -> s{_gcpvcDescription = a})

-- | Output only. The time when the catalog was created.
gcpvcCreateTime :: Lens' GoogleCloudPrivatecatalogV1beta1Catalog (Maybe UTCTime)
gcpvcCreateTime
  = lens _gcpvcCreateTime
      (\ s a -> s{_gcpvcCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudPrivatecatalogV1beta1Catalog
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogV1beta1Catalog"
              (\ o ->
                 GoogleCloudPrivatecatalogV1beta1Catalog' <$>
                   (o .:? "updateTime") <*> (o .:? "name") <*>
                     (o .:? "displayName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleCloudPrivatecatalogV1beta1Catalog
         where
        toJSON GoogleCloudPrivatecatalogV1beta1Catalog'{..}
          = object
              (catMaybes
                 [("updateTime" .=) <$> _gcpvcUpdateTime,
                  ("name" .=) <$> _gcpvcName,
                  ("displayName" .=) <$> _gcpvcDisplayName,
                  ("description" .=) <$> _gcpvcDescription,
                  ("createTime" .=) <$> _gcpvcCreateTime])

-- | Response message for PrivateCatalog.SearchProducts.
--
-- /See:/ 'googleCloudPrivatecatalogV1beta1SearchProductsResponse' smart constructor.
data GoogleCloudPrivatecatalogV1beta1SearchProductsResponse =
  GoogleCloudPrivatecatalogV1beta1SearchProductsResponse'
    { _gcpvsprNextPageToken :: !(Maybe Text)
    , _gcpvsprProducts :: !(Maybe [GoogleCloudPrivatecatalogV1beta1Product])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1SearchProductsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvsprNextPageToken'
--
-- * 'gcpvsprProducts'
googleCloudPrivatecatalogV1beta1SearchProductsResponse
    :: GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
googleCloudPrivatecatalogV1beta1SearchProductsResponse =
  GoogleCloudPrivatecatalogV1beta1SearchProductsResponse'
    {_gcpvsprNextPageToken = Nothing, _gcpvsprProducts = Nothing}


-- | A pagination token returned from a previous call to SearchProducts that
-- indicates from where listing should continue. This field is optional.
gcpvsprNextPageToken :: Lens' GoogleCloudPrivatecatalogV1beta1SearchProductsResponse (Maybe Text)
gcpvsprNextPageToken
  = lens _gcpvsprNextPageToken
      (\ s a -> s{_gcpvsprNextPageToken = a})

-- | The \`Product\` resources computed from the resource context.
gcpvsprProducts :: Lens' GoogleCloudPrivatecatalogV1beta1SearchProductsResponse [GoogleCloudPrivatecatalogV1beta1Product]
gcpvsprProducts
  = lens _gcpvsprProducts
      (\ s a -> s{_gcpvsprProducts = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogV1beta1SearchProductsResponse"
              (\ o ->
                 GoogleCloudPrivatecatalogV1beta1SearchProductsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "products" .!= mempty))

instance ToJSON
           GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
         where
        toJSON
          GoogleCloudPrivatecatalogV1beta1SearchProductsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcpvsprNextPageToken,
                  ("products" .=) <$> _gcpvsprProducts])

-- | Output only. The asset which has been validated and is ready to be
-- provisioned. See
-- google.cloud.privatecatalogproducer.v1beta.Version.asset for details.
--
-- /See:/ 'googleCloudPrivatecatalogV1beta1VersionAsset' smart constructor.
newtype GoogleCloudPrivatecatalogV1beta1VersionAsset =
  GoogleCloudPrivatecatalogV1beta1VersionAsset'
    { _gcpvvaAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1VersionAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvvaAddtional'
googleCloudPrivatecatalogV1beta1VersionAsset
    :: HashMap Text JSONValue -- ^ 'gcpvvaAddtional'
    -> GoogleCloudPrivatecatalogV1beta1VersionAsset
googleCloudPrivatecatalogV1beta1VersionAsset pGcpvvaAddtional_ =
  GoogleCloudPrivatecatalogV1beta1VersionAsset'
    {_gcpvvaAddtional = _Coerce # pGcpvvaAddtional_}


-- | Properties of the object.
gcpvvaAddtional :: Lens' GoogleCloudPrivatecatalogV1beta1VersionAsset (HashMap Text JSONValue)
gcpvvaAddtional
  = lens _gcpvvaAddtional
      (\ s a -> s{_gcpvvaAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogV1beta1VersionAsset
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogV1beta1VersionAsset"
              (\ o ->
                 GoogleCloudPrivatecatalogV1beta1VersionAsset' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudPrivatecatalogV1beta1VersionAsset
         where
        toJSON = toJSON . _gcpvvaAddtional

-- | The consumer representation of a version which is a child resource under
-- a \`Product\` with asset data.
--
-- /See:/ 'googleCloudPrivatecatalogV1beta1Version' smart constructor.
data GoogleCloudPrivatecatalogV1beta1Version =
  GoogleCloudPrivatecatalogV1beta1Version'
    { _gcpvvAsset :: !(Maybe GoogleCloudPrivatecatalogV1beta1VersionAsset)
    , _gcpvvUpdateTime :: !(Maybe DateTime')
    , _gcpvvName :: !(Maybe Text)
    , _gcpvvDescription :: !(Maybe Text)
    , _gcpvvCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvvAsset'
--
-- * 'gcpvvUpdateTime'
--
-- * 'gcpvvName'
--
-- * 'gcpvvDescription'
--
-- * 'gcpvvCreateTime'
googleCloudPrivatecatalogV1beta1Version
    :: GoogleCloudPrivatecatalogV1beta1Version
googleCloudPrivatecatalogV1beta1Version =
  GoogleCloudPrivatecatalogV1beta1Version'
    { _gcpvvAsset = Nothing
    , _gcpvvUpdateTime = Nothing
    , _gcpvvName = Nothing
    , _gcpvvDescription = Nothing
    , _gcpvvCreateTime = Nothing
    }


-- | Output only. The asset which has been validated and is ready to be
-- provisioned. See
-- google.cloud.privatecatalogproducer.v1beta.Version.asset for details.
gcpvvAsset :: Lens' GoogleCloudPrivatecatalogV1beta1Version (Maybe GoogleCloudPrivatecatalogV1beta1VersionAsset)
gcpvvAsset
  = lens _gcpvvAsset (\ s a -> s{_gcpvvAsset = a})

-- | Output only. The time when the version was last updated.
gcpvvUpdateTime :: Lens' GoogleCloudPrivatecatalogV1beta1Version (Maybe UTCTime)
gcpvvUpdateTime
  = lens _gcpvvUpdateTime
      (\ s a -> s{_gcpvvUpdateTime = a})
      . mapping _DateTime

-- | Output only. The resource name of the version, in the format
-- \`catalogs\/{catalog_id}\/products\/{product_id}\/versions\/a-z*[a-z0-9]\'.
-- A unique identifier for the version under a product.
gcpvvName :: Lens' GoogleCloudPrivatecatalogV1beta1Version (Maybe Text)
gcpvvName
  = lens _gcpvvName (\ s a -> s{_gcpvvName = a})

-- | Output only. The user-supplied description of the version. Maximum of
-- 256 characters.
gcpvvDescription :: Lens' GoogleCloudPrivatecatalogV1beta1Version (Maybe Text)
gcpvvDescription
  = lens _gcpvvDescription
      (\ s a -> s{_gcpvvDescription = a})

-- | Output only. The time when the version was created.
gcpvvCreateTime :: Lens' GoogleCloudPrivatecatalogV1beta1Version (Maybe UTCTime)
gcpvvCreateTime
  = lens _gcpvvCreateTime
      (\ s a -> s{_gcpvvCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudPrivatecatalogV1beta1Version
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogV1beta1Version"
              (\ o ->
                 GoogleCloudPrivatecatalogV1beta1Version' <$>
                   (o .:? "asset") <*> (o .:? "updateTime") <*>
                     (o .:? "name")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleCloudPrivatecatalogV1beta1Version
         where
        toJSON GoogleCloudPrivatecatalogV1beta1Version'{..}
          = object
              (catMaybes
                 [("asset" .=) <$> _gcpvvAsset,
                  ("updateTime" .=) <$> _gcpvvUpdateTime,
                  ("name" .=) <$> _gcpvvName,
                  ("description" .=) <$> _gcpvvDescription,
                  ("createTime" .=) <$> _gcpvvCreateTime])

-- | Response message for PrivateCatalog.SearchVersions.
--
-- /See:/ 'googleCloudPrivatecatalogV1beta1SearchVersionsResponse' smart constructor.
data GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse =
  GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse'
    { _gcpvsvrNextPageToken :: !(Maybe Text)
    , _gcpvsvrVersions :: !(Maybe [GoogleCloudPrivatecatalogV1beta1Version])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvsvrNextPageToken'
--
-- * 'gcpvsvrVersions'
googleCloudPrivatecatalogV1beta1SearchVersionsResponse
    :: GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
googleCloudPrivatecatalogV1beta1SearchVersionsResponse =
  GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse'
    {_gcpvsvrNextPageToken = Nothing, _gcpvsvrVersions = Nothing}


-- | A pagination token returned from a previous call to SearchVersions that
-- indicates from where the listing should continue. This field is
-- optional.
gcpvsvrNextPageToken :: Lens' GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse (Maybe Text)
gcpvsvrNextPageToken
  = lens _gcpvsvrNextPageToken
      (\ s a -> s{_gcpvsvrNextPageToken = a})

-- | The \`Version\` resources computed from the resource context.
gcpvsvrVersions :: Lens' GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse [GoogleCloudPrivatecatalogV1beta1Version]
gcpvsvrVersions
  = lens _gcpvsvrVersions
      (\ s a -> s{_gcpvsvrVersions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse"
              (\ o ->
                 GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "versions" .!= mempty))

instance ToJSON
           GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
         where
        toJSON
          GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcpvsvrNextPageToken,
                  ("versions" .=) <$> _gcpvsvrVersions])

-- | The readonly representation of a product computed with a given resource
-- context.
--
-- /See:/ 'googleCloudPrivatecatalogV1beta1Product' smart constructor.
data GoogleCloudPrivatecatalogV1beta1Product =
  GoogleCloudPrivatecatalogV1beta1Product'
    { _gcpvpIconURI :: !(Maybe Text)
    , _gcpvpUpdateTime :: !(Maybe DateTime')
    , _gcpvpDisplayMetadata :: !(Maybe GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata)
    , _gcpvpName :: !(Maybe Text)
    , _gcpvpAssetType :: !(Maybe Text)
    , _gcpvpCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcpvpIconURI'
--
-- * 'gcpvpUpdateTime'
--
-- * 'gcpvpDisplayMetadata'
--
-- * 'gcpvpName'
--
-- * 'gcpvpAssetType'
--
-- * 'gcpvpCreateTime'
googleCloudPrivatecatalogV1beta1Product
    :: GoogleCloudPrivatecatalogV1beta1Product
googleCloudPrivatecatalogV1beta1Product =
  GoogleCloudPrivatecatalogV1beta1Product'
    { _gcpvpIconURI = Nothing
    , _gcpvpUpdateTime = Nothing
    , _gcpvpDisplayMetadata = Nothing
    , _gcpvpName = Nothing
    , _gcpvpAssetType = Nothing
    , _gcpvpCreateTime = Nothing
    }


-- | Output only. The icon URI of the product.
gcpvpIconURI :: Lens' GoogleCloudPrivatecatalogV1beta1Product (Maybe Text)
gcpvpIconURI
  = lens _gcpvpIconURI (\ s a -> s{_gcpvpIconURI = a})

-- | Output only. The time when the product was last updated.
gcpvpUpdateTime :: Lens' GoogleCloudPrivatecatalogV1beta1Product (Maybe UTCTime)
gcpvpUpdateTime
  = lens _gcpvpUpdateTime
      (\ s a -> s{_gcpvpUpdateTime = a})
      . mapping _DateTime

-- | Output only. The display metadata to describe the product. The JSON
-- schema of the metadata differs by Product.asset_type. When the type is
-- \`google.deploymentmanager.Template\`, the schema is as follows: \`\`\`
-- \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object
-- properties: name: type: string minLength: 1 maxLength: 64 description:
-- type: string minLength: 1 maxLength: 2048 tagline: type: string
-- minLength: 1 maxLength: 100 support_info: type: string minLength: 1
-- maxLength: 2048 creator: type: string minLength: 1 maxLength: 100
-- documentation: type: array items: type: object properties: url: type:
-- string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- title: type: string minLength: 1 maxLength: 64 description: type: string
-- minLength: 1 maxLength: 2048 required: - name - description
-- additionalProperties: false \`\`\` When the asset type is
-- \`google.cloudprivatecatalog.ListingOnly\`, the schema is as follows:
-- \`\`\` \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type:
-- object properties: name: type: string minLength: 1 maxLength: 64
-- description: type: string minLength: 1 maxLength: 2048 tagline: type:
-- string minLength: 1 maxLength: 100 support_info: type: string minLength:
-- 1 maxLength: 2048 creator: type: string minLength: 1 maxLength: 100
-- documentation: type: array items: type: object properties: url: type:
-- string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- title: type: string minLength: 1 maxLength: 64 description: type: string
-- minLength: 1 maxLength: 2048 signup_url: type: string pattern:
-- \"^(https?):\/\/[-a-zA-Z0-9+&\'#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\'#\/%=~_|]\"
-- required: - name - description - signup_url additionalProperties: false
-- \`\`\`
gcpvpDisplayMetadata :: Lens' GoogleCloudPrivatecatalogV1beta1Product (Maybe GoogleCloudPrivatecatalogV1beta1ProductDisplayMetadata)
gcpvpDisplayMetadata
  = lens _gcpvpDisplayMetadata
      (\ s a -> s{_gcpvpDisplayMetadata = a})

-- | Output only. The resource name of the target product, in the format of
-- \`products\/a-z*[a-z0-9]\'. A unique identifier for the product under a
-- catalog.
gcpvpName :: Lens' GoogleCloudPrivatecatalogV1beta1Product (Maybe Text)
gcpvpName
  = lens _gcpvpName (\ s a -> s{_gcpvpName = a})

-- | Output only. The type of the product asset. It can be one of the
-- following values: * \`google.deploymentmanager.Template\` *
-- \`google.cloudprivatecatalog.ListingOnly\`
gcpvpAssetType :: Lens' GoogleCloudPrivatecatalogV1beta1Product (Maybe Text)
gcpvpAssetType
  = lens _gcpvpAssetType
      (\ s a -> s{_gcpvpAssetType = a})

-- | Output only. The time when the product was created.
gcpvpCreateTime :: Lens' GoogleCloudPrivatecatalogV1beta1Product (Maybe UTCTime)
gcpvpCreateTime
  = lens _gcpvpCreateTime
      (\ s a -> s{_gcpvpCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudPrivatecatalogV1beta1Product
         where
        parseJSON
          = withObject
              "GoogleCloudPrivatecatalogV1beta1Product"
              (\ o ->
                 GoogleCloudPrivatecatalogV1beta1Product' <$>
                   (o .:? "iconUri") <*> (o .:? "updateTime") <*>
                     (o .:? "displayMetadata")
                     <*> (o .:? "name")
                     <*> (o .:? "assetType")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleCloudPrivatecatalogV1beta1Product
         where
        toJSON GoogleCloudPrivatecatalogV1beta1Product'{..}
          = object
              (catMaybes
                 [("iconUri" .=) <$> _gcpvpIconURI,
                  ("updateTime" .=) <$> _gcpvpUpdateTime,
                  ("displayMetadata" .=) <$> _gcpvpDisplayMetadata,
                  ("name" .=) <$> _gcpvpName,
                  ("assetType" .=) <$> _gcpvpAssetType,
                  ("createTime" .=) <$> _gcpvpCreateTime])
