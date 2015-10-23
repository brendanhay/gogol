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
-- Module      : Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of operation resources contained within the specified
-- project.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.globalAccountsOperations.list@.
module Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.List
    (
    -- * REST Resource
      GlobalAccountsOperationsListResource

    -- * Creating a Request
    , globalAccountsOperationsList
    , GlobalAccountsOperationsList

    -- * Request Lenses
    , gaolOrderBy
    , gaolProject
    , gaolFilter
    , gaolPageToken
    , gaolMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.globalAccountsOperations.list@ method which the
-- 'GlobalAccountsOperationsList' request conforms to.
type GlobalAccountsOperationsListResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "alt" AltJSON :> Get '[JSON] OperationList

-- | Retrieves the list of operation resources contained within the specified
-- project.
--
-- /See:/ 'globalAccountsOperationsList' smart constructor.
data GlobalAccountsOperationsList = GlobalAccountsOperationsList
    { _gaolOrderBy    :: !(Maybe Text)
    , _gaolProject    :: !Text
    , _gaolFilter     :: !(Maybe Text)
    , _gaolPageToken  :: !(Maybe Text)
    , _gaolMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAccountsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaolOrderBy'
--
-- * 'gaolProject'
--
-- * 'gaolFilter'
--
-- * 'gaolPageToken'
--
-- * 'gaolMaxResults'
globalAccountsOperationsList
    :: Text -- ^ 'gaolProject'
    -> GlobalAccountsOperationsList
globalAccountsOperationsList pGaolProject_ =
    GlobalAccountsOperationsList
    { _gaolOrderBy = Nothing
    , _gaolProject = pGaolProject_
    , _gaolFilter = Nothing
    , _gaolPageToken = Nothing
    , _gaolMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
gaolOrderBy :: Lens' GlobalAccountsOperationsList (Maybe Text)
gaolOrderBy
  = lens _gaolOrderBy (\ s a -> s{_gaolOrderBy = a})

-- | Project ID for this request.
gaolProject :: Lens' GlobalAccountsOperationsList Text
gaolProject
  = lens _gaolProject (\ s a -> s{_gaolProject = a})

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
gaolFilter :: Lens' GlobalAccountsOperationsList (Maybe Text)
gaolFilter
  = lens _gaolFilter (\ s a -> s{_gaolFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
gaolPageToken :: Lens' GlobalAccountsOperationsList (Maybe Text)
gaolPageToken
  = lens _gaolPageToken
      (\ s a -> s{_gaolPageToken = a})

-- | Maximum count of results to be returned.
gaolMaxResults :: Lens' GlobalAccountsOperationsList Word32
gaolMaxResults
  = lens _gaolMaxResults
      (\ s a -> s{_gaolMaxResults = a})

instance GoogleRequest GlobalAccountsOperationsList
         where
        type Rs GlobalAccountsOperationsList = OperationList
        requestClient GlobalAccountsOperationsList{..}
          = go _gaolProject _gaolOrderBy _gaolFilter
              _gaolPageToken
              (Just _gaolMaxResults)
              (Just AltJSON)
              userAccountsService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalAccountsOperationsListResource)
                      mempty
