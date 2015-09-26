{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Apps.Licensing.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Apps.Licensing.Types.Product where

import           Network.Google.Apps.Licensing.Types.Sum
import           Network.Google.Prelude

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

-- | LicesnseAssignment List for a given product\/sku for a customer.
--
-- /See:/ 'licenseAssignmentList' smart constructor.
data LicenseAssignmentList = LicenseAssignmentList
    { _lalEtag          :: !(Maybe Text)
    , _lalNextPageToken :: !(Maybe Text)
    , _lalKind          :: !Text
    , _lalItems         :: !(Maybe [Maybe LicenseAssignment])
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
lalItems :: Lens' LicenseAssignmentList [Maybe LicenseAssignment]
lalItems
  = lens _lalItems (\ s a -> s{_lalItems = a}) .
      _Default
      . _Coerce
