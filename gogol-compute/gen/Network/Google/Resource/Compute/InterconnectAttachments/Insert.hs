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
-- Module      : Network.Google.Resource.Compute.InterconnectAttachments.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an InterconnectAttachment in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnectAttachments.insert@.
module Network.Google.Resource.Compute.InterconnectAttachments.Insert
    (
    -- * REST Resource
      InterconnectAttachmentsInsertResource

    -- * Creating a Request
    , interconnectAttachmentsInsert
    , InterconnectAttachmentsInsert

    -- * Request Lenses
    , iaiRequestId
    , iaiProject
    , iaiPayload
    , iaiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.interconnectAttachments.insert@ method which the
-- 'InterconnectAttachmentsInsert' request conforms to.
type InterconnectAttachmentsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "interconnectAttachments" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] InterconnectAttachment :>
                         Post '[JSON] Operation

-- | Creates an InterconnectAttachment in the specified project using the
-- data included in the request.
--
-- /See:/ 'interconnectAttachmentsInsert' smart constructor.
data InterconnectAttachmentsInsert = InterconnectAttachmentsInsert'
    { _iaiRequestId :: !(Maybe Text)
    , _iaiProject   :: !Text
    , _iaiPayload   :: !InterconnectAttachment
    , _iaiRegion    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InterconnectAttachmentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaiRequestId'
--
-- * 'iaiProject'
--
-- * 'iaiPayload'
--
-- * 'iaiRegion'
interconnectAttachmentsInsert
    :: Text -- ^ 'iaiProject'
    -> InterconnectAttachment -- ^ 'iaiPayload'
    -> Text -- ^ 'iaiRegion'
    -> InterconnectAttachmentsInsert
interconnectAttachmentsInsert pIaiProject_ pIaiPayload_ pIaiRegion_ =
    InterconnectAttachmentsInsert'
    { _iaiRequestId = Nothing
    , _iaiProject = pIaiProject_
    , _iaiPayload = pIaiPayload_
    , _iaiRegion = pIaiRegion_
    }

-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
iaiRequestId :: Lens' InterconnectAttachmentsInsert (Maybe Text)
iaiRequestId
  = lens _iaiRequestId (\ s a -> s{_iaiRequestId = a})

-- | Project ID for this request.
iaiProject :: Lens' InterconnectAttachmentsInsert Text
iaiProject
  = lens _iaiProject (\ s a -> s{_iaiProject = a})

-- | Multipart request metadata.
iaiPayload :: Lens' InterconnectAttachmentsInsert InterconnectAttachment
iaiPayload
  = lens _iaiPayload (\ s a -> s{_iaiPayload = a})

-- | Name of the region for this request.
iaiRegion :: Lens' InterconnectAttachmentsInsert Text
iaiRegion
  = lens _iaiRegion (\ s a -> s{_iaiRegion = a})

instance GoogleRequest InterconnectAttachmentsInsert
         where
        type Rs InterconnectAttachmentsInsert = Operation
        type Scopes InterconnectAttachmentsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InterconnectAttachmentsInsert'{..}
          = go _iaiProject _iaiRegion _iaiRequestId
              (Just AltJSON)
              _iaiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InterconnectAttachmentsInsertResource)
                      mempty
