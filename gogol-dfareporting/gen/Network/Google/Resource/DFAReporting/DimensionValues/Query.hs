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
-- Module      : Network.Google.Resource.DFAReporting.DimensionValues.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves list of report dimension values for a list of filters.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingDimensionValuesQuery@.
module Network.Google.Resource.DFAReporting.DimensionValues.Query
    (
    -- * REST Resource
      DimensionValuesQueryResource

    -- * Creating a Request
    , dimensionValuesQuery'
    , DimensionValuesQuery'

    -- * Request Lenses
    , dvqProFileId
    , dvqPayload
    , dvqPageToken
    , dvqMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingDimensionValuesQuery@ method which the
-- 'DimensionValuesQuery'' request conforms to.
type DimensionValuesQueryResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "dimensionvalues" :>
           "query" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] DimensionValueRequest :>
                     Post '[JSON] DimensionValueList

-- | Retrieves list of report dimension values for a list of filters.
--
-- /See:/ 'dimensionValuesQuery'' smart constructor.
data DimensionValuesQuery' = DimensionValuesQuery'
    { _dvqProFileId  :: !Int64
    , _dvqPayload    :: !DimensionValueRequest
    , _dvqPageToken  :: !(Maybe Text)
    , _dvqMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DimensionValuesQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvqProFileId'
--
-- * 'dvqPayload'
--
-- * 'dvqPageToken'
--
-- * 'dvqMaxResults'
dimensionValuesQuery'
    :: Int64 -- ^ 'profileId'
    -> DimensionValueRequest -- ^ 'payload'
    -> DimensionValuesQuery'
dimensionValuesQuery' pDvqProFileId_ pDvqPayload_ =
    DimensionValuesQuery'
    { _dvqProFileId = pDvqProFileId_
    , _dvqPayload = pDvqPayload_
    , _dvqPageToken = Nothing
    , _dvqMaxResults = Nothing
    }

-- | The DFA user profile ID.
dvqProFileId :: Lens' DimensionValuesQuery' Int64
dvqProFileId
  = lens _dvqProFileId (\ s a -> s{_dvqProFileId = a})

-- | Multipart request metadata.
dvqPayload :: Lens' DimensionValuesQuery' DimensionValueRequest
dvqPayload
  = lens _dvqPayload (\ s a -> s{_dvqPayload = a})

-- | The value of the nextToken from the previous result page.
dvqPageToken :: Lens' DimensionValuesQuery' (Maybe Text)
dvqPageToken
  = lens _dvqPageToken (\ s a -> s{_dvqPageToken = a})

-- | Maximum number of results to return.
dvqMaxResults :: Lens' DimensionValuesQuery' (Maybe Int32)
dvqMaxResults
  = lens _dvqMaxResults
      (\ s a -> s{_dvqMaxResults = a})

instance GoogleRequest DimensionValuesQuery' where
        type Rs DimensionValuesQuery' = DimensionValueList
        requestClient DimensionValuesQuery'{..}
          = go _dvqProFileId _dvqPageToken _dvqMaxResults
              (Just AltJSON)
              _dvqPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DimensionValuesQueryResource)
                      mempty
