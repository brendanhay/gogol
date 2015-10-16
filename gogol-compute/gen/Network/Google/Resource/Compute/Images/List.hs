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
-- Module      : Network.Google.Resource.Compute.Images.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of image resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeImagesList@.
module Network.Google.Resource.Compute.Images.List
    (
    -- * REST Resource
      ImagesListResource

    -- * Creating a Request
    , imagesList'
    , ImagesList'

    -- * Request Lenses
    , ilProject
    , ilFilter
    , ilPageToken
    , ilMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeImagesList@ method which the
-- 'ImagesList'' request conforms to.
type ImagesListResource =
     Capture "project" Text :>
       "global" :>
         "images" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] ImageList

-- | Retrieves the list of image resources available to the specified
-- project.
--
-- /See:/ 'imagesList'' smart constructor.
data ImagesList' = ImagesList'
    { _ilProject    :: !Text
    , _ilFilter     :: !(Maybe Text)
    , _ilPageToken  :: !(Maybe Text)
    , _ilMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilProject'
--
-- * 'ilFilter'
--
-- * 'ilPageToken'
--
-- * 'ilMaxResults'
imagesList'
    :: Text -- ^ 'project'
    -> ImagesList'
imagesList' pIlProject_ =
    ImagesList'
    { _ilProject = pIlProject_
    , _ilFilter = Nothing
    , _ilPageToken = Nothing
    , _ilMaxResults = 500
    }

-- | Project ID for this request.
ilProject :: Lens' ImagesList' Text
ilProject
  = lens _ilProject (\ s a -> s{_ilProject = a})

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
ilFilter :: Lens' ImagesList' (Maybe Text)
ilFilter = lens _ilFilter (\ s a -> s{_ilFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
ilPageToken :: Lens' ImagesList' (Maybe Text)
ilPageToken
  = lens _ilPageToken (\ s a -> s{_ilPageToken = a})

-- | Maximum count of results to be returned.
ilMaxResults :: Lens' ImagesList' Word32
ilMaxResults
  = lens _ilMaxResults (\ s a -> s{_ilMaxResults = a})

instance GoogleRequest ImagesList' where
        type Rs ImagesList' = ImageList
        requestClient ImagesList'{..}
          = go _ilProject _ilFilter _ilPageToken
              (Just _ilMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesListResource)
                      mempty
