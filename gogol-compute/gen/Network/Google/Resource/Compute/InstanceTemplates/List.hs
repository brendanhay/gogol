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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of instance templates that are contained within the
-- specified project and zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceTemplates.list@.
module Network.Google.Resource.Compute.InstanceTemplates.List
    (
    -- * REST Resource
      InstanceTemplatesListResource

    -- * Creating a Request
    , instanceTemplatesList
    , InstanceTemplatesList

    -- * Request Lenses
    , itlProject
    , itlFilter
    , itlPageToken
    , itlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceTemplates.list@ method which the
-- 'InstanceTemplatesList' request conforms to.
type InstanceTemplatesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] InstanceTemplateList

-- | Retrieves a list of instance templates that are contained within the
-- specified project and zone.
--
-- /See:/ 'instanceTemplatesList' smart constructor.
data InstanceTemplatesList = InstanceTemplatesList
    { _itlProject    :: !Text
    , _itlFilter     :: !(Maybe Text)
    , _itlPageToken  :: !(Maybe Text)
    , _itlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlProject'
--
-- * 'itlFilter'
--
-- * 'itlPageToken'
--
-- * 'itlMaxResults'
instanceTemplatesList
    :: Text -- ^ 'itlProject'
    -> InstanceTemplatesList
instanceTemplatesList pItlProject_ =
    InstanceTemplatesList
    { _itlProject = pItlProject_
    , _itlFilter = Nothing
    , _itlPageToken = Nothing
    , _itlMaxResults = 500
    }

-- | The project ID for this request.
itlProject :: Lens' InstanceTemplatesList Text
itlProject
  = lens _itlProject (\ s a -> s{_itlProject = a})

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
itlFilter :: Lens' InstanceTemplatesList (Maybe Text)
itlFilter
  = lens _itlFilter (\ s a -> s{_itlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
itlPageToken :: Lens' InstanceTemplatesList (Maybe Text)
itlPageToken
  = lens _itlPageToken (\ s a -> s{_itlPageToken = a})

-- | Maximum count of results to be returned.
itlMaxResults :: Lens' InstanceTemplatesList Word32
itlMaxResults
  = lens _itlMaxResults
      (\ s a -> s{_itlMaxResults = a})
      . _Coerce

instance GoogleRequest InstanceTemplatesList where
        type Rs InstanceTemplatesList = InstanceTemplateList
        requestClient InstanceTemplatesList{..}
          = go _itlProject _itlFilter _itlPageToken
              (Just _itlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceTemplatesListResource)
                      mempty
