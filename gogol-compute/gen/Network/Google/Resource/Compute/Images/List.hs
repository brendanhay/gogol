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
-- Retrieves the list of private images available to the specified project.
-- Private images are images you create that belong to your project. This
-- method does not get any images that belong to other projects, including
-- publicly-available images, like Debian 7. If you want to get a list of
-- publicly-available images, use this method to make a request to the
-- respective image project, such as debian-cloud or windows-cloud. See
-- Accessing images for more information.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.list@.
module Network.Google.Resource.Compute.Images.List
    (
    -- * REST Resource
      ImagesListResource

    -- * Creating a Request
    , imagesList
    , ImagesList

    -- * Request Lenses
    , illProject
    , illFilter
    , illPageToken
    , illMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.images.list@ method which the
-- 'ImagesList' request conforms to.
type ImagesListResource =
     Capture "project" Text :>
       "global" :>
         "images" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] ImageList

-- | Retrieves the list of private images available to the specified project.
-- Private images are images you create that belong to your project. This
-- method does not get any images that belong to other projects, including
-- publicly-available images, like Debian 7. If you want to get a list of
-- publicly-available images, use this method to make a request to the
-- respective image project, such as debian-cloud or windows-cloud. See
-- Accessing images for more information.
--
-- /See:/ 'imagesList' smart constructor.
data ImagesList = ImagesList
    { _illProject    :: !Text
    , _illFilter     :: !(Maybe Text)
    , _illPageToken  :: !(Maybe Text)
    , _illMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illProject'
--
-- * 'illFilter'
--
-- * 'illPageToken'
--
-- * 'illMaxResults'
imagesList
    :: Text -- ^ 'illProject'
    -> ImagesList
imagesList pIllProject_ =
    ImagesList
    { _illProject = pIllProject_
    , _illFilter = Nothing
    , _illPageToken = Nothing
    , _illMaxResults = 500
    }

-- | Project ID for this request.
illProject :: Lens' ImagesList Text
illProject
  = lens _illProject (\ s a -> s{_illProject = a})

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
illFilter :: Lens' ImagesList (Maybe Text)
illFilter
  = lens _illFilter (\ s a -> s{_illFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
illPageToken :: Lens' ImagesList (Maybe Text)
illPageToken
  = lens _illPageToken (\ s a -> s{_illPageToken = a})

-- | Maximum count of results to be returned.
illMaxResults :: Lens' ImagesList Word32
illMaxResults
  = lens _illMaxResults
      (\ s a -> s{_illMaxResults = a})

instance GoogleRequest ImagesList where
        type Rs ImagesList = ImageList
        requestClient ImagesList{..}
          = go _illProject _illFilter _illPageToken
              (Just _illMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesListResource)
                      mempty
