{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Manufacturers.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Manufacturers.Types.Product where

import           Network.Google.Manufacturers.Types.Sum
import           Network.Google.Prelude

-- | Attributes of the product. For more information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116.
--
-- /See:/ 'attributes' smart constructor.
data Attributes = Attributes'
    { _aProductName    :: !(Maybe Text)
    , _aProductLine    :: !(Maybe Text)
    , _aProductType    :: !(Maybe [Text])
    , _aBrand          :: !(Maybe Text)
    , _aGtin           :: !(Maybe [Text])
    , _aTitle          :: !(Maybe Text)
    , _aMpn            :: !(Maybe Text)
    , _aProductPageURL :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Attributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aProductName'
--
-- * 'aProductLine'
--
-- * 'aProductType'
--
-- * 'aBrand'
--
-- * 'aGtin'
--
-- * 'aTitle'
--
-- * 'aMpn'
--
-- * 'aProductPageURL'
attributes
    :: Attributes
attributes =
    Attributes'
    { _aProductName = Nothing
    , _aProductLine = Nothing
    , _aProductType = Nothing
    , _aBrand = Nothing
    , _aGtin = Nothing
    , _aTitle = Nothing
    , _aMpn = Nothing
    , _aProductPageURL = Nothing
    }

-- | The canonical name of the product. For more information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#productname.
aProductName :: Lens' Attributes (Maybe Text)
aProductName
  = lens _aProductName (\ s a -> s{_aProductName = a})

-- | The name of the group of products related to the product. For more
-- information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#productline.
aProductLine :: Lens' Attributes (Maybe Text)
aProductLine
  = lens _aProductLine (\ s a -> s{_aProductLine = a})

-- | The manufacturer\'s category of the product. For more information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#producttype.
aProductType :: Lens' Attributes [Text]
aProductType
  = lens _aProductType (\ s a -> s{_aProductType = a})
      . _Default
      . _Coerce

-- | The brand name of the product. For more information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#brand.
aBrand :: Lens' Attributes (Maybe Text)
aBrand = lens _aBrand (\ s a -> s{_aBrand = a})

-- | The Global Trade Item Number (GTIN) of the product. For more
-- information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#gtin.
aGtin :: Lens' Attributes [Text]
aGtin
  = lens _aGtin (\ s a -> s{_aGtin = a}) . _Default .
      _Coerce

-- | The title of the product. For more information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#title.
aTitle :: Lens' Attributes (Maybe Text)
aTitle = lens _aTitle (\ s a -> s{_aTitle = a})

-- | The Manufacturer Part Number (MPN) of the product. For more information,
-- see https:\/\/support.google.com\/manufacturers\/answer\/6124116#mpn.
aMpn :: Lens' Attributes (Maybe Text)
aMpn = lens _aMpn (\ s a -> s{_aMpn = a})

-- | The URL of the manufacturer\'s detail page of the product. For more
-- information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#productpage.
aProductPageURL :: Lens' Attributes (Maybe Text)
aProductPageURL
  = lens _aProductPageURL
      (\ s a -> s{_aProductPageURL = a})

instance FromJSON Attributes where
        parseJSON
          = withObject "Attributes"
              (\ o ->
                 Attributes' <$>
                   (o .:? "productName") <*> (o .:? "productLine") <*>
                     (o .:? "productType" .!= mempty)
                     <*> (o .:? "brand")
                     <*> (o .:? "gtin" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "mpn")
                     <*> (o .:? "productPageUrl"))

instance ToJSON Attributes where
        toJSON Attributes'{..}
          = object
              (catMaybes
                 [("productName" .=) <$> _aProductName,
                  ("productLine" .=) <$> _aProductLine,
                  ("productType" .=) <$> _aProductType,
                  ("brand" .=) <$> _aBrand, ("gtin" .=) <$> _aGtin,
                  ("title" .=) <$> _aTitle, ("mpn" .=) <$> _aMpn,
                  ("productPageUrl" .=) <$> _aProductPageURL])

-- | Product data.
--
-- /See:/ 'product' smart constructor.
data Product = Product'
    { _pParent                     :: !(Maybe Text)
    , _pManuallyDeletedAttributes  :: !(Maybe [Text])
    , _pTargetCountry              :: !(Maybe Text)
    , _pManuallyProvidedAttributes :: !(Maybe Attributes)
    , _pName                       :: !(Maybe Text)
    , _pIssues                     :: !(Maybe [Issue])
    , _pUploadedAttributes         :: !(Maybe Attributes)
    , _pContentLanguage            :: !(Maybe Text)
    , _pFinalAttributes            :: !(Maybe Attributes)
    , _pProductId                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pManuallyDeletedAttributes'
--
-- * 'pTargetCountry'
--
-- * 'pManuallyProvidedAttributes'
--
-- * 'pName'
--
-- * 'pIssues'
--
-- * 'pUploadedAttributes'
--
-- * 'pContentLanguage'
--
-- * 'pFinalAttributes'
--
-- * 'pProductId'
product
    :: Product
product =
    Product'
    { _pParent = Nothing
    , _pManuallyDeletedAttributes = Nothing
    , _pTargetCountry = Nothing
    , _pManuallyProvidedAttributes = Nothing
    , _pName = Nothing
    , _pIssues = Nothing
    , _pUploadedAttributes = Nothing
    , _pContentLanguage = Nothing
    , _pFinalAttributes = Nothing
    , _pProductId = Nothing
    }

-- | Parent ID in the format \`accounts\/{account_id}\`. \`account_id\` - The
-- ID of the Manufacturer Center account. \'OutputOnly
pParent :: Lens' Product (Maybe Text)
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | Names of the attributes of the product deleted manually via the
-- Manufacturer Center UI. \'OutputOnly
pManuallyDeletedAttributes :: Lens' Product [Text]
pManuallyDeletedAttributes
  = lens _pManuallyDeletedAttributes
      (\ s a -> s{_pManuallyDeletedAttributes = a})
      . _Default
      . _Coerce

-- | The target country of the product as a CLDR territory code (for example,
-- US). \'OutputOnly
pTargetCountry :: Lens' Product (Maybe Text)
pTargetCountry
  = lens _pTargetCountry
      (\ s a -> s{_pTargetCountry = a})

-- | Attributes of the product provided manually via the Manufacturer Center
-- UI. \'OutputOnly
pManuallyProvidedAttributes :: Lens' Product (Maybe Attributes)
pManuallyProvidedAttributes
  = lens _pManuallyProvidedAttributes
      (\ s a -> s{_pManuallyProvidedAttributes = a})

-- | Name in the format \`{target_country}:{content_language}:{product_id}\`.
-- \`target_country\` - The target country of the product as a CLDR
-- territory code (for example, US). \`content_language\` - The content
-- language of the product as a two-letter ISO 639-1 language code (for
-- example, en). \`product_id\` - The ID of the product. For more
-- information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#id.
-- \'OutputOnly
pName :: Lens' Product (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | A server-generated list of issues associated with the product.
-- \'OutputOnly
pIssues :: Lens' Product [Issue]
pIssues
  = lens _pIssues (\ s a -> s{_pIssues = a}) . _Default
      . _Coerce

-- | Attributes of the product uploaded via the Manufacturer Center API or
-- via feeds.
pUploadedAttributes :: Lens' Product (Maybe Attributes)
pUploadedAttributes
  = lens _pUploadedAttributes
      (\ s a -> s{_pUploadedAttributes = a})

-- | The content language of the product as a two-letter ISO 639-1 language
-- code (for example, en). \'OutputOnly
pContentLanguage :: Lens' Product (Maybe Text)
pContentLanguage
  = lens _pContentLanguage
      (\ s a -> s{_pContentLanguage = a})

-- | Final attributes of the product. The final attributes are obtained by
-- overriding the uploaded attributes with the manually provided and
-- deleted attributes. Google systems only process, evaluate, review,
-- and\/or use final attributes. \'OutputOnly
pFinalAttributes :: Lens' Product (Maybe Attributes)
pFinalAttributes
  = lens _pFinalAttributes
      (\ s a -> s{_pFinalAttributes = a})

-- | The ID of the product. For more information, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116#id.
-- \'OutputOnly
pProductId :: Lens' Product (Maybe Text)
pProductId
  = lens _pProductId (\ s a -> s{_pProductId = a})

instance FromJSON Product where
        parseJSON
          = withObject "Product"
              (\ o ->
                 Product' <$>
                   (o .:? "parent") <*>
                     (o .:? "manuallyDeletedAttributes" .!= mempty)
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "manuallyProvidedAttributes")
                     <*> (o .:? "name")
                     <*> (o .:? "issues" .!= mempty)
                     <*> (o .:? "uploadedAttributes")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "finalAttributes")
                     <*> (o .:? "productId"))

instance ToJSON Product where
        toJSON Product'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _pParent,
                  ("manuallyDeletedAttributes" .=) <$>
                    _pManuallyDeletedAttributes,
                  ("targetCountry" .=) <$> _pTargetCountry,
                  ("manuallyProvidedAttributes" .=) <$>
                    _pManuallyProvidedAttributes,
                  ("name" .=) <$> _pName, ("issues" .=) <$> _pIssues,
                  ("uploadedAttributes" .=) <$> _pUploadedAttributes,
                  ("contentLanguage" .=) <$> _pContentLanguage,
                  ("finalAttributes" .=) <$> _pFinalAttributes,
                  ("productId" .=) <$> _pProductId])

-- | Product issue.
--
-- /See:/ 'issue' smart constructor.
data Issue = Issue'
    { _iAttribute   :: !(Maybe Text)
    , _iSeverity    :: !(Maybe IssueSeverity)
    , _iType        :: !(Maybe Text)
    , _iDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Issue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iAttribute'
--
-- * 'iSeverity'
--
-- * 'iType'
--
-- * 'iDescription'
issue
    :: Issue
issue =
    Issue'
    { _iAttribute = Nothing
    , _iSeverity = Nothing
    , _iType = Nothing
    , _iDescription = Nothing
    }

-- | If present, the attribute that triggered the issue. For more information
-- about attributes, see
-- https:\/\/support.google.com\/manufacturers\/answer\/6124116.
iAttribute :: Lens' Issue (Maybe Text)
iAttribute
  = lens _iAttribute (\ s a -> s{_iAttribute = a})

-- | The severity of the issue.
iSeverity :: Lens' Issue (Maybe IssueSeverity)
iSeverity
  = lens _iSeverity (\ s a -> s{_iSeverity = a})

-- | The server-generated type of the issue, for example,
-- “INCORRECT_TEXT_FORMATTING”, “IMAGE_NOT_SERVEABLE”, etc.
iType :: Lens' Issue (Maybe Text)
iType = lens _iType (\ s a -> s{_iType = a})

-- | Description of the issue.
iDescription :: Lens' Issue (Maybe Text)
iDescription
  = lens _iDescription (\ s a -> s{_iDescription = a})

instance FromJSON Issue where
        parseJSON
          = withObject "Issue"
              (\ o ->
                 Issue' <$>
                   (o .:? "attribute") <*> (o .:? "severity") <*>
                     (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON Issue where
        toJSON Issue'{..}
          = object
              (catMaybes
                 [("attribute" .=) <$> _iAttribute,
                  ("severity" .=) <$> _iSeverity,
                  ("type" .=) <$> _iType,
                  ("description" .=) <$> _iDescription])

--
-- /See:/ 'listProductsResponse' smart constructor.
data ListProductsResponse = ListProductsResponse'
    { _lprNextPageToken :: !(Maybe Text)
    , _lprProducts      :: !(Maybe [Product])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListProductsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprNextPageToken'
--
-- * 'lprProducts'
listProductsResponse
    :: ListProductsResponse
listProductsResponse =
    ListProductsResponse'
    { _lprNextPageToken = Nothing
    , _lprProducts = Nothing
    }

-- | The token for the retrieval of the next page of product statuses.
lprNextPageToken :: Lens' ListProductsResponse (Maybe Text)
lprNextPageToken
  = lens _lprNextPageToken
      (\ s a -> s{_lprNextPageToken = a})

-- | List of the products.
lprProducts :: Lens' ListProductsResponse [Product]
lprProducts
  = lens _lprProducts (\ s a -> s{_lprProducts = a}) .
      _Default
      . _Coerce

instance FromJSON ListProductsResponse where
        parseJSON
          = withObject "ListProductsResponse"
              (\ o ->
                 ListProductsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "products" .!= mempty))

instance ToJSON ListProductsResponse where
        toJSON ListProductsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lprNextPageToken,
                  ("products" .=) <$> _lprProducts])
