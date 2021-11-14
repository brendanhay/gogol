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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of custom images available to the specified project.
-- Custom images are images you create that belong to your project. This
-- method does not get any images that belong to other projects, including
-- publicly-available images, like Debian 8. If you want to get a list of
-- publicly-available images, use this method to make a request to the
-- respective image project, such as debian-cloud or windows-cloud.
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
    , imamReturnPartialSuccess
    , imamOrderBy
    , imamProject
    , imamFilter
    , imamPageToken
    , imamMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.images.list@ method which the
-- 'ImagesList' request conforms to.
type ImagesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] ImageList

-- | Retrieves the list of custom images available to the specified project.
-- Custom images are images you create that belong to your project. This
-- method does not get any images that belong to other projects, including
-- publicly-available images, like Debian 8. If you want to get a list of
-- publicly-available images, use this method to make a request to the
-- respective image project, such as debian-cloud or windows-cloud.
--
-- /See:/ 'imagesList' smart constructor.
data ImagesList =
  ImagesList'
    { _imamReturnPartialSuccess :: !(Maybe Bool)
    , _imamOrderBy :: !(Maybe Text)
    , _imamProject :: !Text
    , _imamFilter :: !(Maybe Text)
    , _imamPageToken :: !(Maybe Text)
    , _imamMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imamReturnPartialSuccess'
--
-- * 'imamOrderBy'
--
-- * 'imamProject'
--
-- * 'imamFilter'
--
-- * 'imamPageToken'
--
-- * 'imamMaxResults'
imagesList
    :: Text -- ^ 'imamProject'
    -> ImagesList
imagesList pImamProject_ =
  ImagesList'
    { _imamReturnPartialSuccess = Nothing
    , _imamOrderBy = Nothing
    , _imamProject = pImamProject_
    , _imamFilter = Nothing
    , _imamPageToken = Nothing
    , _imamMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
imamReturnPartialSuccess :: Lens' ImagesList (Maybe Bool)
imamReturnPartialSuccess
  = lens _imamReturnPartialSuccess
      (\ s a -> s{_imamReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
imamOrderBy :: Lens' ImagesList (Maybe Text)
imamOrderBy
  = lens _imamOrderBy (\ s a -> s{_imamOrderBy = a})

-- | Project ID for this request.
imamProject :: Lens' ImagesList Text
imamProject
  = lens _imamProject (\ s a -> s{_imamProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either \`=\`,
-- \`!=\`, \`>\`, or \`\<\`. For example, if you are filtering Compute
-- Engine instances, you can exclude instances named \`example-instance\`
-- by specifying \`name != example-instance\`. You can also filter nested
-- fields. For example, you could specify \`scheduling.automaticRestart =
-- false\` to include instances only if they are not scheduled for
-- automatic restarts. You can use filtering on nested fields to filter
-- based on resource labels. To filter on multiple expressions, provide
-- each separate expression within parentheses. For example: \`\`\`
-- (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\")
-- \`\`\` By default, each expression is an \`AND\` expression. However,
-- you can include \`AND\` and \`OR\` expressions explicitly. For example:
-- \`\`\` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true) \`\`\`
imamFilter :: Lens' ImagesList (Maybe Text)
imamFilter
  = lens _imamFilter (\ s a -> s{_imamFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
imamPageToken :: Lens' ImagesList (Maybe Text)
imamPageToken
  = lens _imamPageToken
      (\ s a -> s{_imamPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
imamMaxResults :: Lens' ImagesList Word32
imamMaxResults
  = lens _imamMaxResults
      (\ s a -> s{_imamMaxResults = a})
      . _Coerce

instance GoogleRequest ImagesList where
        type Rs ImagesList = ImageList
        type Scopes ImagesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ImagesList'{..}
          = go _imamProject _imamReturnPartialSuccess
              _imamOrderBy
              _imamFilter
              _imamPageToken
              (Just _imamMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy ImagesListResource)
                      mempty
