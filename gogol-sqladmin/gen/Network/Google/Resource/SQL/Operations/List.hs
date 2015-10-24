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
-- Module      : Network.Google.Resource.SQL.Operations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all instance operations that have been performed on the given
-- Cloud SQL instance in the reverse chronological order of the start time.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.operations.list@.
module Network.Google.Resource.SQL.Operations.List
    (
    -- * REST Resource
      OperationsListResource

    -- * Creating a Request
    , operationsList
    , OperationsList

    -- * Request Lenses
    , olProject
    , olPageToken
    , olMaxResults
    , olInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.operations.list@ method which the
-- 'OperationsList' request conforms to.
type OperationsListResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "operations" :>
               QueryParam "instance" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] OperationsListResponse

-- | Lists all instance operations that have been performed on the given
-- Cloud SQL instance in the reverse chronological order of the start time.
--
-- /See:/ 'operationsList' smart constructor.
data OperationsList = OperationsList
    { _olProject    :: !Text
    , _olPageToken  :: !(Maybe Text)
    , _olMaxResults :: !(Maybe (Textual Word32))
    , _olInstance   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olProject'
--
-- * 'olPageToken'
--
-- * 'olMaxResults'
--
-- * 'olInstance'
operationsList
    :: Text -- ^ 'olProject'
    -> Text -- ^ 'olInstance'
    -> OperationsList
operationsList pOlProject_ pOlInstance_ =
    OperationsList
    { _olProject = pOlProject_
    , _olPageToken = Nothing
    , _olMaxResults = Nothing
    , _olInstance = pOlInstance_
    }

-- | Project ID of the project that contains the instance.
olProject :: Lens' OperationsList Text
olProject
  = lens _olProject (\ s a -> s{_olProject = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
olPageToken :: Lens' OperationsList (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | Maximum number of operations per response.
olMaxResults :: Lens' OperationsList (Maybe Word32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})
      . mapping _Coerce

-- | Cloud SQL instance ID. This does not include the project ID.
olInstance :: Lens' OperationsList Text
olInstance
  = lens _olInstance (\ s a -> s{_olInstance = a})

instance GoogleRequest OperationsList where
        type Rs OperationsList = OperationsListResponse
        requestClient OperationsList{..}
          = go _olProject (Just _olInstance) _olPageToken
              _olMaxResults
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy OperationsListResource)
                      mempty
