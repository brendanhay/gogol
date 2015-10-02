{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsLicensing.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsLicensing.Types.Product where

import           Network.Google.AppsLicensing.Types.Sum
import           Network.Google.Prelude

-- | Template for LicenseAssignment Insert request
--
-- /See:/ 'licenseAssignmentInsert' smart constructor.
newtype LicenseAssignmentInsert = LicenseAssignmentInsert
    { _laiUserId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laiUserId'
licenseAssignmentInsert
    :: LicenseAssignmentInsert
licenseAssignmentInsert =
    LicenseAssignmentInsert
    { _laiUserId = Nothing
    }

-- | Email id of the user
laiUserId :: Lens' LicenseAssignmentInsert (Maybe Text)
laiUserId
  = lens _laiUserId (\ s a -> s{_laiUserId = a})

instance FromJSON LicenseAssignmentInsert where
        parseJSON
          = withObject "LicenseAssignmentInsert"
              (\ o -> LicenseAssignmentInsert <$> (o .:? "userId"))

instance ToJSON LicenseAssignmentInsert where
        toJSON LicenseAssignmentInsert{..}
          = object (catMaybes [("userId" .=) <$> _laiUserId])

-- | LicesnseAssignment List for a given product\/sku for a customer.
--
-- /See:/ 'licenseAssignmentList' smart constructor.
data LicenseAssignmentList = LicenseAssignmentList
    { _lalEtag          :: !(Maybe Text)
    , _lalNextPageToken :: !(Maybe Text)
    , _lalKind          :: !Text
    , _lalItems         :: !(Maybe [LicenseAssignment])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalEtag'
--
-- * 'lalNextPageToken'
--
-- * 'lalKind'
--
-- * 'lalItems'
licenseAssignmentList
    :: LicenseAssignmentList
licenseAssignmentList =
    LicenseAssignmentList
    { _lalEtag = Nothing
    , _lalNextPageToken = Nothing
    , _lalKind = "licensing#licenseAssignmentList"
    , _lalItems = Nothing
    }

-- | ETag of the resource.
lalEtag :: Lens' LicenseAssignmentList (Maybe Text)
lalEtag = lens _lalEtag (\ s a -> s{_lalEtag = a})

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
lalNextPageToken :: Lens' LicenseAssignmentList (Maybe Text)
lalNextPageToken
  = lens _lalNextPageToken
      (\ s a -> s{_lalNextPageToken = a})

-- | Identifies the resource as a collection of LicenseAssignments.
lalKind :: Lens' LicenseAssignmentList Text
lalKind = lens _lalKind (\ s a -> s{_lalKind = a})

-- | The LicenseAssignments in this page of results.
lalItems :: Lens' LicenseAssignmentList [LicenseAssignment]
lalItems
  = lens _lalItems (\ s a -> s{_lalItems = a}) .
      _Default
      . _Coerce

instance FromJSON LicenseAssignmentList where
        parseJSON
          = withObject "LicenseAssignmentList"
              (\ o ->
                 LicenseAssignmentList <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "licensing#licenseAssignmentList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON LicenseAssignmentList where
        toJSON LicenseAssignmentList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lalEtag,
                  ("nextPageToken" .=) <$> _lalNextPageToken,
                  Just ("kind" .= _lalKind),
                  ("items" .=) <$> _lalItems])

-- | Template for LiscenseAssignment Resource
--
-- /See:/ 'licenseAssignment' smart constructor.
data LicenseAssignment = LicenseAssignment
    { _laEtags     :: !(Maybe Text)
    , _laKind      :: !Text
    , _laSkuId     :: !(Maybe Text)
    , _laUserId    :: !(Maybe Text)
    , _laSelfLink  :: !(Maybe Text)
    , _laProductId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laEtags'
--
-- * 'laKind'
--
-- * 'laSkuId'
--
-- * 'laUserId'
--
-- * 'laSelfLink'
--
-- * 'laProductId'
licenseAssignment
    :: LicenseAssignment
licenseAssignment =
    LicenseAssignment
    { _laEtags = Nothing
    , _laKind = "licensing#licenseAssignment"
    , _laSkuId = Nothing
    , _laUserId = Nothing
    , _laSelfLink = Nothing
    , _laProductId = Nothing
    }

-- | ETag of the resource.
laEtags :: Lens' LicenseAssignment (Maybe Text)
laEtags = lens _laEtags (\ s a -> s{_laEtags = a})

-- | Identifies the resource as a LicenseAssignment.
laKind :: Lens' LicenseAssignment Text
laKind = lens _laKind (\ s a -> s{_laKind = a})

-- | Name of the sku of the product.
laSkuId :: Lens' LicenseAssignment (Maybe Text)
laSkuId = lens _laSkuId (\ s a -> s{_laSkuId = a})

-- | Email id of the user.
laUserId :: Lens' LicenseAssignment (Maybe Text)
laUserId = lens _laUserId (\ s a -> s{_laUserId = a})

-- | Link to this page.
laSelfLink :: Lens' LicenseAssignment (Maybe Text)
laSelfLink
  = lens _laSelfLink (\ s a -> s{_laSelfLink = a})

-- | Name of the product.
laProductId :: Lens' LicenseAssignment (Maybe Text)
laProductId
  = lens _laProductId (\ s a -> s{_laProductId = a})

instance FromJSON LicenseAssignment where
        parseJSON
          = withObject "LicenseAssignment"
              (\ o ->
                 LicenseAssignment <$>
                   (o .:? "etags") <*>
                     (o .:? "kind" .!= "licensing#licenseAssignment")
                     <*> (o .:? "skuId")
                     <*> (o .:? "userId")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "productId"))

instance ToJSON LicenseAssignment where
        toJSON LicenseAssignment{..}
          = object
              (catMaybes
                 [("etags" .=) <$> _laEtags, Just ("kind" .= _laKind),
                  ("skuId" .=) <$> _laSkuId,
                  ("userId" .=) <$> _laUserId,
                  ("selfLink" .=) <$> _laSelfLink,
                  ("productId" .=) <$> _laProductId])
