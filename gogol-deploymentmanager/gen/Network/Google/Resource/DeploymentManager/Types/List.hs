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
-- Module      : Network.Google.Resource.DeploymentManager.Types.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all resource types for Deployment Manager.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerTypesList@.
module Network.Google.Resource.DeploymentManager.Types.List
    (
    -- * REST Resource
      TypesListResource

    -- * Creating a Request
    , typesList'
    , TypesList'

    -- * Request Lenses
    , tlProject
    , tlFilter
    , tlPageToken
    , tlMaxResults
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerTypesList@ method which the
-- 'TypesList'' request conforms to.
type TypesListResource =
     Capture "project" Text :>
       "global" :>
         "types" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] TypesListResponse

-- | Lists all resource types for Deployment Manager.
--
-- /See:/ 'typesList'' smart constructor.
data TypesList' = TypesList'
    { _tlProject    :: !Text
    , _tlFilter     :: !(Maybe Text)
    , _tlPageToken  :: !(Maybe Text)
    , _tlMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TypesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlProject'
--
-- * 'tlFilter'
--
-- * 'tlPageToken'
--
-- * 'tlMaxResults'
typesList'
    :: Text -- ^ 'project'
    -> TypesList'
typesList' pTlProject_ =
    TypesList'
    { _tlProject = pTlProject_
    , _tlFilter = Nothing
    , _tlPageToken = Nothing
    , _tlMaxResults = 500
    }

-- | The project ID for this request.
tlProject :: Lens' TypesList' Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
tlFilter :: Lens' TypesList' (Maybe Text)
tlFilter = lens _tlFilter (\ s a -> s{_tlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tlPageToken :: Lens' TypesList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | Maximum count of results to be returned.
tlMaxResults :: Lens' TypesList' Word32
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

instance GoogleRequest TypesList' where
        type Rs TypesList' = TypesListResponse
        requestClient TypesList'{..}
          = go _tlProject _tlFilter _tlPageToken
              (Just _tlMaxResults)
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy TypesListResource)
                      mempty
