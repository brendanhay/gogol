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
-- Module      : Network.Google.Resource.DataTransfer.Applications.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the applications available for data transfer for a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @DataTransferApplicationsList@.
module Network.Google.Resource.DataTransfer.Applications.List
    (
    -- * REST Resource
      ApplicationsListResource

    -- * Creating a Request
    , applicationsList'
    , ApplicationsList'

    -- * Request Lenses
    , alCustomerId
    , alPageToken
    , alMaxResults
    ) where

import           Network.Google.DataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @DataTransferApplicationsList@ method which the
-- 'ApplicationsList'' request conforms to.
type ApplicationsListResource =
     "applications" :>
       QueryParam "customerId" Text :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] ApplicationsListResponse

-- | Lists the applications available for data transfer for a customer.
--
-- /See:/ 'applicationsList'' smart constructor.
data ApplicationsList' = ApplicationsList'
    { _alCustomerId :: !(Maybe Text)
    , _alPageToken  :: !(Maybe Text)
    , _alMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alCustomerId'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
applicationsList'
    :: ApplicationsList'
applicationsList' =
    ApplicationsList'
    { _alCustomerId = Nothing
    , _alPageToken = Nothing
    , _alMaxResults = Nothing
    }

-- | Immutable ID of the Google Apps account.
alCustomerId :: Lens' ApplicationsList' (Maybe Text)
alCustomerId
  = lens _alCustomerId (\ s a -> s{_alCustomerId = a})

-- | Token to specify next page in the list.
alPageToken :: Lens' ApplicationsList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Maximum number of results to return. Default is 100.
alMaxResults :: Lens' ApplicationsList' (Maybe Word32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

instance GoogleRequest ApplicationsList' where
        type Rs ApplicationsList' = ApplicationsListResponse
        requestClient ApplicationsList'{..}
          = go _alCustomerId _alPageToken _alMaxResults
              (Just AltJSON)
              dataTransfer
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsListResource)
                      mempty
